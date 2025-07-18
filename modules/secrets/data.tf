data "aws_secretsmanager_random_password" "default" {
  count = 2 
  password_length  = 16
}
