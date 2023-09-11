terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.29.0"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "web-1"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}

resource "digitalocean_droplet" "web2" {
  image  = "ubuntu-20-04-x64"
  name   = "web-2"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}