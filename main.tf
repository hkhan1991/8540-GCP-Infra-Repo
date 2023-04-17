# Provider configuration for Google Cloud
provider "google" {
  credentials = file("<YOUR_SERVICE_ACCOUNT_KEY_JSON_FILE>")
  project     = "<YOUR_PROJECT_NAME>"
  region      = "<YOUR_REGION>"
}

# Create a GCS bucket
resource "google_storage_bucket" "bucket1" {
  name     = "my-bucket1"
  location = "<YOUR_REGION>"
}

# Create a GCS for Firebase bucket
resource "google_project_service" "firebase" {
  project_id = "<YOUR_PROJECT_NAME>"
  service    = "firebase.googleapis.com"
}

resource "google_firebase_project_bucket" "bucket2" {
  project = "<YOUR_PROJECT_NAME>"
  location_id = "<YOUR_REGION>"
  name     = "my-bucket2"
}
