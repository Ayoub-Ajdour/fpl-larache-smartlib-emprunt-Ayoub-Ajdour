variable "ecs_cluster_name" {
  type = string
}

variable "ecs_task_family" {
  type = string
}

variable "ecs_service_name" {
  type = string
}


variable "subnet_ids" {
  type = list(string)
}
variable "task_execution_role" {
  description = "The IAM role for ECS task execution"
  type        = string
}

variable "ecr_repository_url" {
  description = "URL of the ECR repository"
  type        = string
}