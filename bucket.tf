resource "google_storage_bucket" "gcp-bucket" {
  name                        = "nexedge-bucket-sharun1029"
  location                    = "US"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "bucket_eu" {
  name                        = "nexedge-bucket-sharun1099-eu"
  location                    = "EU"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "bucket_asia" {
  name                        = "nexedge-bucket-sharun1039-asia"
  location                    = "ASIA"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}