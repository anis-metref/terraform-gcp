resource "google_compute_instance" "instance-bdd" {
  name         = "instance-bdd"
  machine_type = var.gcp_type
  zone         = var.gcp_region
  tags         = ["instance-bdd", "ssh-tag", "icmp-tag", "host-to-add"]

  boot_disk {
    initialize_params {
      image = var.image_debian
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.instance1-subnet.self_link

    access_config {
      nat_ip = var.instance4_ip_bdd
    }
  }

  metadata = {
    ssh-keys = "terraform-user:${file("./chemin/vers/votre/cle_public.pub")}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get install curl",
      "sudo curl -s https://raw.githubusercontent.com/fucks1u/scripts-provisionning/main/install-database.sh | sudo bash"
    ]

    connection {
      type        = "ssh"
      user        = "terraform-user"
      host        = var.instance4_ip_bdd
      private_key = file("./chemin/vers/votre/cle_prive")
      timeout     = "1m"
    }
  }
}

