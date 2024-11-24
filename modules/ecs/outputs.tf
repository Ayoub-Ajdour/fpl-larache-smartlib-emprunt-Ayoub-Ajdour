output "cluster_id" {
  value = aws_ecs_cluster.app_cluster.id
}
output "task_definition_arn" {
  value = aws_ecs_task_definition.app_task.arn
}