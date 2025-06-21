variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
  
}
variable "subnet_id" {
  type = string
}
variable "key_name" {
  type = string
}
variable "security_group_ids" {
  type = list(string)
}
variable "associate_public_ip" {
  type = bool
  default = false
}
variable "instance_name" {
  type = string
  default = "ec2-server-instance"
}
variable "tags" {
  type = map(string)
  default = {}
}