terraform {
  required_providers {
    local = {
      version = "2.5.2"
    }
  }
  backend "s3" {
    bucket          = "terraform"
    key             = "terraform.tfstate"
    region          = "placeholder"

    endpoints = {
      s3 = "http://192.168.99.114:9000"
    }

    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true
  }
}
