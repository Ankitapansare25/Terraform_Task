variable "ami_id" {
  default = "ami-0d176f79571d18a8f"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "s3_bucket_name" {
    default = "terraformtaskbucket01"
  
}

variable "tags" {
    type = map(string)
    default = {}
}
  
