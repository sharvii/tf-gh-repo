# resource "aws_s3_bucket" "example" {
#   bucket = "sharvi-tf-state-bucket"

#   tags = {
#     Name        = "sharvi-tf-state-bucket"
#     Environment = "Dev"
#   }
# }


# resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
#   bucket = aws_s3_bucket.example.id

#   rule {
#     apply_server_side_encryption_by_default {
#       sse_algorithm     = "aws:kms"
#     }
#   }
# }


resource "aws_instance" "example" {

 ami           = var.ami_id
 instance_type = var.instance_type

  tags = {
   Name = "Terraform-EC2"
 }
}

