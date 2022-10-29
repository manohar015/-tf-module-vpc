resource "aws_route53_zone_association" "secondary" {
  zone_id = ?????
  vpc_id  = aws_vpc.secondary.id
}