project = "your project name"  # add your project name
region = "us-central1"
zone = "us-central1-a"
machine_type = "n1-standard-2"
open_ports = ["22","443","80","6443","2379-2380","10250","10259","10257","30000-32767"]
firewall = "kube-firewall"
vpc_network = "kube-vpc-network"
instance_names = ["control-plane-1", "control-plane-2","control-plane-3",
                "slave-1", "slave-2","slave-3","slave-4","slave-5","slave-6"]
subnetwork = "my-subnetwork" 
router = "my-router"
router_nat = "my-nat"

