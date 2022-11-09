terraform {
 backend "gcs" {
   bucket  = "gcp-sandbox-terraform-state-bucket"
   prefix  = "terraform/state"
 }
}
