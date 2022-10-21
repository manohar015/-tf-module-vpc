resource "aws_subnet" "main" {
  count      = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = ""

  tags = {
    Name = "pub-Main1"
  }
}

