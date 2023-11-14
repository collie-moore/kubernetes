provider "google" {
  credentials = file("keys.json")
  project = var.project
  region      = var.region
}

