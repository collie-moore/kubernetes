resource "google_compute_instance" "example_instance" {
  count = length(var.instance_names)
  name         = var.instance_names[count.index]
  machine_type = var.machine_type
  zone       = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10" 
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.my-subnetwork.self_link
  }
}
