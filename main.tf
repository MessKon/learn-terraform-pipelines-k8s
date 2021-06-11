terraform {
  backend "remote" {
    organization = "infrastructure-pipelines-workshop"
    workspaces {
      name = "kostas-m-consul"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
  }

  required_version = "~> 0.14"
}

provider "google" {
  project = var.google_project
  region  = var.region
}
