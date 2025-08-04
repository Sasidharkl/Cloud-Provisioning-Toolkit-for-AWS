resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (us-east-1)
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_ids[count.index]
  tags = {
    Name = "${var.project_name}-web-${count.index + 1}"
  }
}
