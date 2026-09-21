# output "az_info" {
#   description = "List of Availability Zone names"
#   value       = data.aws_availability_zones.available.names
# }

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}
output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public[*].id
}
output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private[*].id
}
output "database_subnet_id" {
  description = "The ID of the database subnet"
  value       = aws_subnet.database[*].id
}