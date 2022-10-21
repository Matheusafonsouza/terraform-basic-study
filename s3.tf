resource "aws_s3_bucket" "dev" {
    bucket = "terraform-afonso-dev-bucket"
    acl = "private"

    tags = {
        Name = "terraform-afonso-dev-bucket"
    }
}
