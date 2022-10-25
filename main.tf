module "demo_ec2_instance" {
  source        = "./ssm-ec2-module"
  vpc_id        = data.aws_vpc.talent_academy.id
  ami_id        = data.aws_ami.amzlinux.id
  subnet_id     = data.aws_subnet.private.id
  instance_name = "module-demo1"
}

module "demo2_ec2_instance" {
  source        = "./ssm-ec2-module"
  vpc_id        = data.aws_vpc.talent_academy.id
  ami_id        = data.aws_ami.amzlinux.id
  subnet_id     = data.aws_subnet.private.id
  instance_name = "module-demo2"
}
