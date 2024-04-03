terraform {
  required_providers {
    tfcoremock = {
      source  = "hashicorp/tfcoremock"
      version = ">= 0.1.2"
    }
  }
}

variable "dynamic_resource_subedir_B_value" {
  type = number
}

resource "tfcoremock_dynamic_resource" "my_resource" {
  my_subdir_B_value = var.dynamic_resource_subedir_B_value
}