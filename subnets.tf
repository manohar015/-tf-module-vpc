resource "aws_subnet" "main" {
  count      = lenght(var.PUBLIC_SUBNET_CIDR)
  vpc_id     = aws_vpc.main.id
  cidr_block = ""

  tags = {
    Name = "pub-Main1"
  }
}
