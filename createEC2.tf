#This creates an ec2 instance with tags but does NOT contain the logic necessary to place the instance in the newly created VPC, or pull the pem key file.
#Uncomment the sections below if you want to create the ec2 instance along with the rest of this script

#resource "aws_instance" "instance" {
  #ami                         = "ami-0c02fb55956c7d316"
  #availability_zone           = "${var.aws_region}a"
  #instance_type               = "t2.micro"
  #associate_public_ip_address = true
  
  #tags = {
    #name = "test-EC2"
    #owner = "name_here"
    #expire-on = "expiry_date"
    #purpose = "training"
    
  #}
#}

