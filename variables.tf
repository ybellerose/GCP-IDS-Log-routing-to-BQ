variable "project_id" {
  type = string
  description = "The project id"  
}

variable "dataset_name" {
  type = string
  description = "Bigquery dataset for Cloud IDS logs"
}

variable "dataset_location" {
  type = string
  description = "Bigquery dataset location"
}

variable "log_router_name" {
  type = string
  description = "Log router name"
}