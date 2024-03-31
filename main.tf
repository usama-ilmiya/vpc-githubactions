provider "google" {
  credentials = jsondecode(base64decode(var.GOOGLE_CREDENTIALS))
  project     = "gmzdev"
  region      = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name                    = "vpc-githubActions"
  auto_create_subnetworks = false
}
