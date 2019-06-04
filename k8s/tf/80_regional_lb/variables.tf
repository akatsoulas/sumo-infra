variable "region" {
  default = "us-west-2"
}

variable "node_port" {
  default = "30443"
}

variable "project" {
  default = "sumo"
}

variable "ssl_cert_prod" {
  default = "arn:aws:acm:us-west-2:095732026120:certificate/8d68c499-42aa-41cf-80c7-bb3b1e402790"
}

variable "sumo_zone_id" {
  default = "ZXCBUDNBNSCXV"
}

variable "lb_hostname" {
  default = "prod-oregon.sumo.mozit.cloud"
}

variable "service" {
  default = "sumo"
}

variable "environment" {
  default = "prod"
}

variable "prod_public_subnets" {
  type    = "list"
  default = ["subnet-09e56bef33ab1bcb4", "subnet-08d07fc06f7710c5e"]
}

# Tags to apply across the VPC resources
variable "base_tags" {
  type = "map"

  default = {
    "method"      = "terraform"
    "project"     = "sumo"
    "service"     = "sumo-prod-regional-lb"
    "region"      = "us-west-2"
    "environment" = "prod"
    "source"      = "gh:mozilla-it/sumo-infra:mozilla/kitsune"
  }
}
