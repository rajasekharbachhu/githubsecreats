# Define a variable for the first number
variable "number1" {
  description = "The first number to add"
  type        = number
}

# Define a variable for the second number
variable "number2" {
  description = "The second number to add"
  type        = number
}

# Calculate the sum of the two numbers
locals {
  sum = var.number1 + var.number2
 
 
}

# Output the result
output "sum_result" {
  description = "The sum of the two numbers"
  value       = local.sum
}
