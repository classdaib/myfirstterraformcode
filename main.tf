provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}



variable "access_key" {}
variable "secret_key" {}
variable "region" {}



terraform {
  cloud {
    organization = "Visual-greatness-llc-class"

    workspaces {
      name = "awsec2deploy"
    }
  }
}



resource "aws_instance" "test-1" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t3.nano"
  tags = {
    "Name" = "Olawale"
  }
}

resource "aws_instance" "test-2" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Omotayo"
  }
}

resource "aws_instance" "test-3" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Tolulope"
  }
}

resource "aws_instance" "test-4" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Carita"
  }
}

resource "aws_instance" "test-5" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Isaac"
  }
}

resource "aws_instance" "test-6" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Ade"
  }
}

resource "aws_instance" "test-7" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Taiwo"
  }
}

resource "aws_instance" "test-8" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Toyin"
  }
}