terraform {
  required_providers {
    tfcoremock = {
      source  = "hashicorp/tfcoremock"
      version = ">= 0.1.2"
    }
  }
}

variable "subdir_C_value" {
  type = number
}

resource "tfcoremock_dynamic_resource" "my_dynamic_resource" {
  my_subdir_C_value = var.subdir_C_value
}