resource "aws_ecr_repository" "mi_repositorio_ecr" {
  name                 = "${var.resource_name}-ECR" # El nombre que deseas para el repositorio de ECR
  image_tag_mutability = "MUTABLE"            # O "IMMUTABLE" si prefieres que las etiquetas de imagen no se puedan sobrescribir

  image_scanning_configuration {
    scan_on_push = true # Habilita el escaneo de imágenes en push para vulnerabilidades
  }

  # Opcional: Configuración de la política de ciclo de vida
  lifecycle_policy {
    policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than 30 days",
            "selection": {
                "tagStatus": "untagged",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": 30
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
  }

}

resource "aws_ecr_repository_policy" "mi_repositorio_ecr_policy" {
  repository = aws_ecr_repository.mi_repositorio_ecr.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "NewPolicy",
        Effect = "Allow",
        Principal = "*",
        Action = [
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "ecr:BatchCheckLayerAvailability"
        ],
      },
    ],
  })
}