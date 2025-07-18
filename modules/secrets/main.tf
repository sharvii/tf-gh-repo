resource "aws_secretsmanager_secret" "replicate_secrets" {
  name = var.secret_name
}

resource "aws_secretsmanager_secret_version" "app_secret_version" {
  secret_id     = aws_secretsmanager_secret.app_secret.id
  secret_string = jsonencode(local.secret_payload)
}