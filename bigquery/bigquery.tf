variable "project_id" {}
variable "dataset_name" {}
variable "dataset_location" {}

resource "google_bigquery_dataset" "dataset" {
    project                     = var.project_id
    dataset_id                  = var.dataset_name
    friendly_name               = "IDS"
    description                 = "IDS dataset"
    location                    = var.dataset_location
    delete_contents_on_destroy  = true
}