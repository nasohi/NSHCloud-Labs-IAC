data "template_file" "user_data" {
  template = file("../scripts/add-ssh-web-app.yaml")
}

resource "aws_instance" "nshcloudlabs-webapp1" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet_public.id
  vpc_security_group_ids      = [aws_security_group.nshcloudlabs-public-security.id]
  associate_public_ip_address = true
  user_data                   = data.template_file.user_data.rendered

  tags = {
    Name = "nshcloudlabs-webapp1"
  }
}

#resource "aws_instance" "nshcloudlabs-webapp2" {
#  ami                         = data.aws_ami.ubuntu.id
#  instance_type               = "t2.micro"
#  subnet_id                   = aws_subnet.subnet_public.id
#  vpc_security_group_ids      = [aws_security_group.sg_22_80.id]
#  associate_public_ip_address = true
#  user_data                   = data.template_file.user_data.rendered
#
#  tags = {
#    Name = "nshcloudlabs-webapp2"
#  }
#}
