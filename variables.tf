variable "aws_region" {
  default = "eu-north-1"
}

variable "ecr_repository_name" {
  default = "dev-fplarache-smartlib-emprunt-repo-ayoub"
}

variable "ecs_cluster_name" {
  default = "dev-fplarache-smartlib-emprunt-cluster-ayoub"
}

variable "ecs_task_family" {
  default = "dev-fplarache-smartlib-emprunt-family-ayoub"
}

variable "ecs_service_name" {
  default = "dev-fplarache-smartlib-emprunt-svc-ayoub"
}

variable "subnet_ids" {
  type = list(string)
}
