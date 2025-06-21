variable "bucket_name" {
  type = string
}
variable "acl" {
  type = string
  default = "private"
}
variable "environment" {
  type = string
  default = "dev"
  
}
variable "tags" {
  type = map(string)
  default = {}
  
}
variable "prevent_destroy" {
  type = bool
  default = false
}