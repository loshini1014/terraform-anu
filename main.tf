provider "aws" {
    region = "us-east-1"
    access_key = "AKIA5J52ATHMPAHNZVNH"
    secret_key = "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"
}

resource "aws_instance" "abc-instance" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.medium"
    key_name = "linux"
    count = 1
    availability_zone = "us-east-1a"
    tags = {
        Owner = "trial"
        Name  = "abc-instance"
    }
}