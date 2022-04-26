resource "aws_instance" "instance" {
  ami                         = "ami-0c02fb55956c7d316"
  availability_zone           = "${var.aws_region}a"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  
  tags = {
    name = "test-EC2"
    owner = "cbaird"
    expire-on = "2022-05-10"
    purpose = "training"
    
  }
}

