#Defining variables for EC2
variable "instance_name" {
  description = "Name of ec2 instance"
  type        = string
}

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-west-1"
}

#Defining variables for AWS access ( for Enterprise need use vault service to keep secrert more secure)
variable "aws_access_key" {
  default = "AKIAQVRIOJZ6ARAFCAMQ"
}

variable "aws_secret_key" {
  default = "YDyq9Nnr8IdgUG/u1FgZashaYeDTanDUlkUpbk/c"
}
