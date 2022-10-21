resource "aws_subnet" "main" {
  count      = lenght(var.PUBLIC_SUBNET_CIDR)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.)

  tags = {
    Name = "pub-Main1"
  }
}
