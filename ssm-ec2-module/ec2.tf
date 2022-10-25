resource "aws_instance" "server" {
  ami                  = var.ami_id
  instance_type        = "t3.small"
  iam_instance_profile = aws_iam_instance_profile.instance_profile.name

  vpc_security_group_ids = [aws_security_group.server.id]
  subnet_id              = var.subnet_id

  tags = {
    Name = var.instance_name
  }
}

