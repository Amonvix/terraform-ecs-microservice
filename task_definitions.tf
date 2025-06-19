resource "aws_ecs_task_definition" "app_task" {
  family                   = "${var.project_name}-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "512"       # 0.5 vCPU
  memory                   = "1024"      # 1 GB RAM
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-java-crud"
      image = "${var.account_id}.dkr.ecr.${var.region}.amazonaws.com/ecs-java-crud:latest"
      cpu       = 128
      memory    = 256
      essential = true
      portMappings = [
        {
          containerPort = 8080
          hostPort      = 8080
          protocol      = "tcp"
        }
      ]
    },
    {
      name      = "titanic-fastapi-ecs"
      image = "${var.account_id}.dkr.ecr.${var.region}.amazonaws.com/titanic-fastapi-ecs:latest"
      cpu       = 64
      memory    = 128
      essential = false
      portMappings = [
        {
          containerPort = 8000
          hostPort      = 8001
          protocol      = "tcp"
        }
      ]
    },
    {
      name      = "crud-ecs-python"
      image = "${var.account_id}.dkr.ecr.${var.region}.amazonaws.com/crud-ecs-python:latest"
      cpu       = 128
      memory    = 256
      essential = false
      portMappings = [
        {
          containerPort = 8000
          hostPort      = 8002
          protocol      = "tcp"
        }
      ]
    }
  ])
}
