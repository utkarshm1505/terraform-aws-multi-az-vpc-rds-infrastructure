resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key-1"
  public_key = file("terraform-key.pub")
}

resource "aws_instance" "web_server" {

  ami           = "ami-0ec10929233384c7f"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  key_name = aws_key_pair.terraform_key.key_name

  tags = {
    Name = "Terraform-Ubuntu-EC2"
  }
}