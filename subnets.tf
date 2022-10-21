resource "aws_subnet" "pub-main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = ""

  tags = {
    Name = "pub-Main1"
  }
}

