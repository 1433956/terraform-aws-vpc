
variable "environment" {
  type = string
}
variable "project" {
  type = string

}
variable "cidr_block" {
  default = "10.0.0.0/16"
  type = string
  
}
variable "public_subnet_cidrs" {
  type = list(string)
  
}
variable "private_subnet_cidrs" {
  type = list(string)
}
variable "database_subnet_cidrs" {
   type = list(string)
}

variable "is_peering_required" {
  default = false
}