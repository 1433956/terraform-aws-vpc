data "aws_availability_zones" "available" {
  state = "available"
}

output "zones" {
  value = data.aws_availability_zones.available
}
data "aws_vpc" "default" {
  default = true
} 
output "default_vpc" {
  value = data.aws_vpc.default
}
data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id
  filter {
    name = "association.main"
    values = ["true"]
  }
}
 output "vpc_id" {
  value=aws_vpc.main.id
 }

 output "public_subnet_ids" {
   value = aws_subnet.public[*].id
 }
output "private_subnet_ids" {
  value = aws_subnet.private[*].id
  
}
output "database_subnet_ids" {
  value = aws_subnet.database[*].id
  
}