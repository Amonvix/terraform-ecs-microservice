variable "project_name" {
  default = "terraform-ecs-microservice"
}

variable "region" {
  default = "us-east-1"
}

variable "account_id" {
  description = "AWS Account ID for ECR"
  type        = string
}
