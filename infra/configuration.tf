terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.43.0"
    }
  }
  backend "gcs" {
    bucket  = "gcp-sandbox-terraform-state-bucket"
    prefix  = "terraform/state"
  }
}
