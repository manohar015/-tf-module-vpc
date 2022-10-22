# Creates Public Subnets

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.ENV}-pub-route-table"
  }
}

resource "aws_route_table_association" "public-rt-association" {
  count          = length(aws_subnet.public.*.id)
  subnet_id      = element(ws_subnet.public.*.id_subnet, count.index)
  route_table_id = aws_route_table.public-rt.id
}