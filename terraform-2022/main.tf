provider "google" {
  project     = "my-new-project-334916"
  credentials = file("${path.module}/creds/service.json")
}
resource "google_compute_instance" "oluseyi88" {
  name         = "oluseyi88"
  machine_type = "e2-medium"
  zone         = "us-east4-c"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"





  