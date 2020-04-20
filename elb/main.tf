resource "aws_security_group" "elb-sg" {
  name   = "nginx_elb_sg"
  vpc_id = var.vpc_id

  #Allow HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
  
resource "aws_elb" "web" {
  name = "nginx-elb"

  subnets         = var.subnets
  security_groups = [aws_security_group.elb-sg.id]
  instances       = var.instances

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}
