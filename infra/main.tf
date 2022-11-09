# This uses a project that already exists
locals {
  project_id = "gcp-sandbox-368017"
}

# Need to add a TXT record for domain and verify
# before this will work
# CNAME record is c.storage.googleapis.com
resource "google_storage_bucket" "static-site" {
  project       = local.project_id
  name          = "gcp.dfar.io"
  location      = "us-east1"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
}