resource "aws_subnet" "main" {
  count      = 
  vpc_id     = aws_vpc.main.id
  cidr_block = ""

  tags = {
    Name = "pub-Main1"
  }
}

