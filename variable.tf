variable "vpc_id" {
  type = string
  default = "vpc-048ab22d225dccc6b"
  
}

variable "subnet_ids" {
  type        = list(string)
  description = "subnets id"
  default     = ["subnet-0bac2570b997172b7", "subnet-0b815b267e28103f6", "subnet-0d178a51587579494"]
}

variable "instance_type" {
  type = string
  default = "m7i-flex.large"
  
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}
