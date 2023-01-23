locals {
  data_lake_bucket = "dtc_data_lake"
}

variable "project" {
  description = "Your GCP Project ID"
  # default = "It's the project ID that we parsed when we use `terraform plan`"
  # default = "dtc-de-360009"
  # type = string
  # If we do not set the default value the CLI will ask us
  # We do not set default value because it will cause an error when working in shared resources
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  # default = "europe-west6"
  default = "asia-southeast1"
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "trips_data_all"
}
