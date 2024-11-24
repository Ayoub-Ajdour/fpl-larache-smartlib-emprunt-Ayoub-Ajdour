resource "aws_ecs_cluster" "app_cluster" {
  name = var.ecs_cluster_name
}

resource "aws_ecs_task_definition" "app_task" {
  family                = var.ecs_task_family
  container_definitions = <<DEFINITION
[{
  "name": "app",
  "image": "${var.ecr_repository_url}:latest",
  "memory": 512,
  "cpu": 256,
  "essential": true
}]
DEFINITION

  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = "512"
  cpu                      = "256"
  execution_role_arn       = var.task_execution_role
}

resource "aws_ecs_service" "app_service" {
  name            = var.ecs_service_name
  cluster         = aws_ecs_cluster.app_cluster.id
  task_definition = aws_ecs_task_definition.app_task.arn
  launch_type     = "FARGATE"

  network_configuration {
    subnets = var.subnet_ids
    assign_public_ip = true
  }

  desired_count = 1
}

