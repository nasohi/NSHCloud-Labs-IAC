provider "google" {
 project = "nshcloudlabs"
 region  = "asia-southeast2"
 zone    = "asia-southeast2-a"
}

#Compute configuration
#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
resource "google_compute_instance" "nshcloudlabs-wwww" {
 name         = "nshcloudlabs-www"
 machine_type = "f1-micro"

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-10"
   }
 }

 tags = ["allow-ssh"]

 network_interface {
   network = google_compute_network.vpc_network.name
   access_config {
   }
 }
}

#Network configuration
resource "google_compute_network" "vpc_network" {
  name                    = "nshcloudlabs-network"
  auto_create_subnetworks = true
}

#Firewall configuration
resource "google_compute_firewall" "allow_ssh" {
  name          = "allow-ssh"
  network       = google_compute_network.vpc_network.name
  target_tags   = ["allow-ssh"] // this targets our tagged VM
  source_ranges = ["0.0.0.0/0"]

#to do change to custom port
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

#output "public_ip" {
#  value = google_compute_address.static_ip.address
#}
