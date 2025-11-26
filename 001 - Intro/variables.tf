variable "instance_name" {
  description = "Value of the EC2 instance's Name tag."
  type        = string
  default     = "learn-terraform"
}

variable "instance_type" {
  description = "The EC2 instance's type."
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "The number of EC2 instances"
  type        = number
  default     = 1
}

variable "exercise" {
  description = "exercise reference"
  type        = number
  default     = 1
}
