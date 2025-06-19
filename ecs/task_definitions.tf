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
      image = "<account_id>.dkr.ecr.us-east-1.amazonaws.com/<nome>:latest"
      cpu       = 128
      memory    = 256
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
          protocol      = "tcp"
        }
      ]
    },
    {
      name      = "titanic-fastapi-ecs"
      image = "<account_id>.dkr.ecr.us-east-1.amazonaws.com/<nome>:latest"
      cpu       = 64
      memory    = 128
      essential = false
    },
    {
      name      = "crud-ecs-python"
      image = "<account_id>.dkr.ecr.us-east-1.amazonaws.com/<nome>:latest"
      cpu       = 128
      memory    = 256
      essential = false
      command   = ["sleep", "3600"]
    }
  ])
}
