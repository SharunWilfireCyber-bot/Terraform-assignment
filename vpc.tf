resource "google_compute_network" "vpc-network" {
  name                    = "sharun-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "sharun-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet_2" {
  name          = "sharun-subnet-2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-east1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "subnet_3" {
  name          = "sharun-subnet-3"
  ip_cidr_range = "10.0.3.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-network.id
}
