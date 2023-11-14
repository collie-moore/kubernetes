variable "project" {}

variable "region" {}

variable "zone" {}

variable "machine_type" {}

variable "instance_names" {}

variable "vpc_network" {}

variable "subnetwork" {} 

variable "open_ports" {}

variable "firewall" {}

variable "router" {}

variable "router_nat" {
    default = "my-nat"
}