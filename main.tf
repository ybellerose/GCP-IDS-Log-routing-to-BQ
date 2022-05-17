
module "bigquery" {
  source            = "./bigquery"
  project_id        = var.project_id
  dataset_name      = var.dataset_name
  dataset_location  = var.dataset_location
}

module "log_router" {
  source            = "./log_router"
  project_id        = var.project_id
  dataset           = var.dataset_name
  log_router_name   = var.log_router_name
  depends_on        = [
    module.bigquery
  ]
}
