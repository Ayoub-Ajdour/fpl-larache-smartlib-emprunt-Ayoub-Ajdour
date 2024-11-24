provider "aws" {
  region = var.aws_region
}

module "ecr" {
  source              = "./modules/ecr"
  ecr_repository_name = var.ecr_repository_name
}

module "networking" {
  source = "./modules/network"
  
  region = var.aws_region  

  subnet_ids = module.networking.subnet_ids
}

module "ecs" {
  source             = "./modules/ecs"
  ecs_cluster_name   = var.ecs_cluster_name
  ecs_task_family    = var.ecs_task_family
  ecs_service_name   = var.ecs_service_name
  subnet_ids         = module.networking.subnet_ids
  
  task_execution_role = data.aws_iam_role.existing_ecs_task_execution.arn
  ecr_repository_url  = module.ecr.repository_url
}

data "aws_iam_role" "existing_ecs_task_execution" {
  name = "ecsTaskExecutionRole"
}





# resource "aws_iam_role_policy_attachment" "ecs_task_execution_attachment" {
#   role       = aws_iam_role.ecs_task_execution.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
# }
