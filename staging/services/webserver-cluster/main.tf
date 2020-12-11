provider "aws" {
  region = "us-west-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "sai-terraform-bucket"
  db_remote_state_key    = "stagging/terraform.tfstate"
  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}