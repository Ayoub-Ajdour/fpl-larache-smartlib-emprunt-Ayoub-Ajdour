output "ecr_repository_url" {
<<<<<<< HEAD
=======
<<<<<<< HEAD
  value = module.ecr.repository_url
}

output "ecs_cluster_id" {
  value = module.ecs.cluster_id
}
=======
>>>>>>> master
  value = aws_ecr_repository.app_repo.repository_url
}

output "ecs_cluster_id" {
  value = aws_ecs_cluster.app_cluster.id
}


<<<<<<< HEAD
=======
>>>>>>> 4c78c0020cc72992a1177875bc73c2ec0cfb2da8
>>>>>>> master
