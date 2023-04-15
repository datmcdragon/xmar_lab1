output "table_name" {
  description = "Name of the table"
  value = aws_dynamodb_table.this.id
}