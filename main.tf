terraform {
    required_providers {
     google = {
      source = "hashicorp/google"
       version = ">= 4.0"
    }
  }
}

provider "google" {
   project = "sharon-project-15717"
   credentials = file("sharon-project-15717-3d096ef5e1d4.json")
}
