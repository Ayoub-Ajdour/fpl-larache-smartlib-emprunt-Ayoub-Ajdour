output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ecs_cluster_id" {
  value = module.ecs.cluster_id
}

output "task_definition_arn" {
  value = module.ecs.task_definition_arn
}
