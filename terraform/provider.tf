terraform {
  required_providers {
    mgc = {
      source = "MagaluCloud/mgc"
      version = "0.33.0"
    }
  }
}

# Magalu cloud provider
provider "mgc" {
  region = var.mgc_region
  api_key = var.mgc_api_key
}