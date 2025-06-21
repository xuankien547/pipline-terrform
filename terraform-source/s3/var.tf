variable "bucket_name" {
  type = string
}
variable "acl" {
  type = string

}
variable "environment" {
  type = string

}
variable "tags" {
  type = map(string)
  default = {}
}
variable "prevent_destroy" {
  type = bool
  default = false
}