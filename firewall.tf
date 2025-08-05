resource "google_compute_firewall" "firewall-icmp" {
  name        = "allow-icmp"
  network     = google_compute_network.instances-network.self_link
  description = "Allow ping"

  allow {
    protocol = "icmp"
  }

  target_tags   = ["icmp-tag"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "firewall-ssh" {
  name        = "firewall-ssh"
  network     = google_compute_network.instances-network.self_link
  description = "Creates firewall that allows ssh connection"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["ssh-tag"]
  source_ranges = [var.source_ip_adress, "10.0.0.0/8"]
}

