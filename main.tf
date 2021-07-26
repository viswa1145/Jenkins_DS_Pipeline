provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZIEY2XMWJU5OFCUZ"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  count = length(var.tagname)

  tags = {
    Name = var.tagname[count.index]
  }
}
