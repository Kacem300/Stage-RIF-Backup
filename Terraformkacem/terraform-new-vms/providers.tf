terraform {
  cloud {
    organization = "rif-stagiaires"

    workspaces {
      # Workspace réservé à la création de cette nouvelle VM.
      name = "CloudSecurity"
    }
  }

  required_version = ">= 1.7.0"

  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}

provider "openstack" {
  user_name           = var.os_username
  password            = var.os_password
  tenant_name         = var.os_project_name
  user_domain_name    = var.os_user_domain_name
  project_domain_name = var.os_project_domain_name

  auth_url = "http://10.0.1.1:5000/v3"
  region   = "RegionOne"
  endpoint_overrides = {
    identity = "http://10.0.1.10:5000/v3/"
    compute  = "http://10.0.1.10:8774/v2.1/"
    network  = "http://10.0.1.10:9696/v2.0/"
    image    = "http://10.0.1.10:9292/v2/"
    volumev3 = "http://10.0.1.10:8776/v3/"
  }
}
