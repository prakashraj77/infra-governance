provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "governance-demo-12345678"
}

resource "aws_security_group" "web" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = ["10.0.0.0/16"]
  }
}

resource "aws_db_instance" "mysql" {

  allocated_storage = 20

  engine = "mysql"

  instance_class = "db.t3.micro"

  username = "admin"

  password = "Password123!"

  storage_encrypted = true

  skip_final_snapshot = true
}
