provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

terraform {
  backend "s3" {
    bucket = "mystate2023"
    access_key = "AKIAVMI3LTTD6CXBQG7V"
    secret_key = "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"
    key    = "myec2state"
    region = "us-east-1"
  }
}



resource "aws_instance" "test-1" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = "t3.nano"
    tags = {
      "Name" = "mysecondinstance"
    }
}

resource "aws_instance" "test-2" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = "t3.nano"
    tags = {
      "Name" = "importec2"
    }
}

resource "aws_instance" "test-3" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = "t2.micro"
    tags = {
      "Name" = "confirmimport"
    }
}

resource "aws_instance" "test-4" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = "t2.micro"
    tags = {
      "Name" = "Carita"
    }
}