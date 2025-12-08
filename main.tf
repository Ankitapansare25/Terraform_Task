provider "aws" {
    region = "ap-south-1"

  
}
resource "aws_instance" "first" {
  ami  = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.new_sg.id]
  tags = merge(var.tags , { Name = "jump_server"})
  }

resource "aws_instance" "second" {
  ami  = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.new_sg.id]
  tags =  merge(var.tags , { Name = "app_server" })
  }


resource "aws_instance" "third" {
  ami  =var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.new_sg.id]
  tags =  merge(var.tags , { Name = "db_server" })
  }

 
 resource "aws_security_group" "new_sg" {
   name = "new_sg"
   
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 }

resource "aws_s3_bucket" "bucket" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
  
}