variable "secret_name" {  type = string ; description = "name of the aws secret to be created" }

variable "secret_value" {
  default = {
    pass1 = ""
    pass2 = ""
  }

  type = map(string)
}