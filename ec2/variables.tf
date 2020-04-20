variable "vpc_id" {}

variable "vpc_cidr_block" {}

variable "ami" {}

variable "instance_type"{
    default = "t2.micro"
}

variable "subnet_id" {}

variable "key_name" {
    default = "LinuxVM"
}

variable "key_path" {
    default = "D:\\AWSLearning\\ES2\\LinuxVM.pem"
}

