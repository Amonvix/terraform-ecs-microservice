resource "aws_security_group" "ecs_sg" {
  name        = "${var.project_name}-sg"
  description = "Allow HTTP and container internal traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
  description = "Java CRUD (porta 8080)"
  from_port   = 8080
  to_port     = 8080
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

ingress {
  description = "Titanic FastAPI (porta 8001)"
  from_port   = 8001
  to_port     = 8001
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

ingress {
  description = "CRUD Python (porta 8002)"
  from_port   = 8002
  to_port     = 8002
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}


  tags = {
    Name = "${var.project_name}-sg"
  }
}
