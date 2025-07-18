

locals {
    pass1 = var.secret_values[pass1] != "" ? var.secret_values[pass1] : data.aws_secretsmanager_random_password.default[0].random_password 

    pass2 = var.secret_values[pass2] != "" ? var.secret_values[pass2] : data.aws_secretsmanager_random_password.default[1].random_password

    secret_payload = {
        username = local.pass1
        password = local.pass2
    }
}