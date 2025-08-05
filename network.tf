resource "google_compute_network" "instances-network" {
  name                    = "instances-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "instance1-subnet" {
  name          = "instance1-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.instances-network.self_link
  region        = "europe-west3"
}

resource "google_compute_subnetwork" "instance2-subnet" {
  name          = "instance2-subnet"
  ip_cidr_range = "10.0.2.0/24"
  network       = google_compute_network.instances-network.self_link
  region        = "europe-west3"
}

