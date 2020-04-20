variable "vpc_id"{}

variable "subnets"{
    type = list(string) 
}

variable "instances"{
    type = list(string)
}