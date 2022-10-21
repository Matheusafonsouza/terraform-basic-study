resource "aws_instance" "dev" {
    ami = var.amis["us-east-1"]
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.ssh-access.id]
    depends_on = [
        aws_dynamodb_table.dynamodb-dev, 
        aws_s3_bucket.dev
    ]
    tags = {
        Name = "dev"
    }
}
