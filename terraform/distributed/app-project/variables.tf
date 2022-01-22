/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  type = string
}

variable "creds_file" {
  type = string
  default = "key.json"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-c"
}

variable "spanner_name" {
  type    = string
  default = "autoscale-test"
}

variable "terraform_spanner" {
  description = "If set to true, Terraform will create a Cloud Spanner instance and DB."
  type    = bool
  default = false
}

variable "state_project_id" {
  type    = string
}

variable "terraform_dashboard" {
  description = "If set to true, Terraform will create a Cloud Monitoring dashboard including important Spanner metrics."
  type        = bool
  default     = true
}

variable "dashboard_threshold_high_priority_cpu_percentage" {
  description = "Threshold value related to the High Priority CPU utilization."
  type        = number
}

variable "dashboard_threshold_rolling_24_hr_percentage" {
  description = "Threshold value related to the Rolling(Smoothed) 24 hours CPU utilization."
  type        = number
}

variable "dashboard_threshold_storage_percentage" {
  description = "Threshold value related to the Storage utilization."
  type        = number
}