data "aws_vpc" "fetch" {
  }
resource "aws_subnet" "subnet1" {
    vpc_id = data.aws_vpc.fetch.id
    cidr_block = var.cidr  
}
resource "aws_instance" "ec2day2" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet1.id
    tags = {
        Name = "ec2day2"
    }
  
}