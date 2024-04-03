terraform {
  required_providers {
    tfcoremock = {
      source  = "hashicorp/tfcoremock"
      version = ">= 0.1.2"
    }
  }
}

module "loop_A" {
  source = "github.com/Ericwww/loop-tf-module//subdir_C"
}

variable "subdir_B_value" {
  type = number
}

resource "tfcoremock_dynamic_resource" "my_resource" {
  my_subdir_B_value = var.subdir_B_value
}