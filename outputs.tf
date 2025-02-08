output "azs" {
    value = data.aws_availability_zones.available.names
}
output  "vpc_id" {
    value = aws_vpc.main.id
}
output "igw_id" {
    value = aws_internet_gateway.igw.id
}
output  "public_subnet_ids" {
    value = aws_subnet.public[*].id
}
output  "private_subnet_ids" {
    value = aws_subnet.private[*].id
}
output  "database_subnet_ids" {
    value = aws_subnet.database[*].id
}

#These group_name, group_id are used in RDS database is mysql
output "database_subnet_group_name" {
    value = aws_db_subnet_group.default.name
}
output "database_subnet_group_id" {
    value = aws_db_subnet_group.default.id
}