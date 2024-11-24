variable "aws_region" {
<<<<<<< HEAD
  default = "us-east-1"
=======
<<<<<<< HEAD
  default = "eu-north-1"
=======
  default = "us-east-1"
>>>>>>> 4c78c0020cc72992a1177875bc73c2ec0cfb2da8
>>>>>>> master
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
