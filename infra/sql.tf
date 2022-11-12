resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "main" {
  project          = local.project_id
  name             = "main-instance-${random_id.db_name_suffix.hex}"
  database_version = "MYSQL_5_7"
  region           = "us-east1"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_user" "users" {
  project  = local.project_id
  name     = "me"
  instance = google_sql_database_instance.main.name
  host     = "me.com"
  password = "changeme"
}