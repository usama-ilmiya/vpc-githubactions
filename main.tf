#terraform {
#  required_providers {
#    google = {
#      source = "hashicorp/google"
#      version = "5.22.0"
#    }
#  }
#}

provider "google" {
  credentials = file("/home/usama/Downloads/personal_gcp_key/gmzdev-f3ac397c9141.json")
  project     = "gmzdev"
  region      = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name                    = "vpc-githubActions"
  auto_create_subnetworks = "false"
}
