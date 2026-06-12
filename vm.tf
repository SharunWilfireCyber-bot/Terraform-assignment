resource "google_compute_instance" "test-vm" {
  name         = "sharun-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-2204-lts"
    }
  }


  network_interface {
    subnetwork = "sharun-subnet"


    access_config {
    }
  }
}


resource "google_compute_instance" "vm2" {
  name         = "sharun-vm-2"
  machine_type = "e2-micro"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_2.id

    access_config {}
  }
}

resource "google_compute_instance" "vm3" {
  name         = "sharun-vm-3"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_3.id

    access_config {}
  }
}