variable "amis" {
    type = map(string)

    default = {
        "us-east-1" = "ami-09d3b3274b6c5d4aa"
    }
}

variable "cdirs_remote_access" {
    type = list(string)

    default = ["189.6.29.254/32"]
}

variable "key_name" {
    default = "terraform-aws"
}

variable "instance_type" {
    default = "t2.micro"
}
