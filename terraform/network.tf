resource "google_compute_network" "vpc_network" {
  project                 = var.project
  name                    = var.vpc_network
  auto_create_subnetworks = false
  mtu                     = 1460
}


resource "google_compute_subnetwork" "my-subnetwork" {
    name           = var.subnetwork
    ip_cidr_range  = "10.0.1.0/24"
    network        = google_compute_network.vpc_network.self_link
    region         = var.region
}


resource "google_compute_firewall" "rule" {
    name         = var.firewall
    network      = google_compute_network.vpc_network.self_link

    allow {
        protocol = "icmp"
    }

    allow {
        protocol = "tcp"
        ports = var.open_ports
    }
    
    source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_router" "router" {
    name         = var.router
    network      = google_compute_network.vpc_network.id
    region       = google_compute_subnetwork.my-subnetwork.region
}


resource "google_compute_router_nat" "router_nat" {
    name                                 = var.router_nat
    router                               = google_compute_router.router.name
    nat_ip_allocate_option               = "AUTO_ONLY"
    source_subnetwork_ip_ranges_to_nat   = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}