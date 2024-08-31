variable "username" {
  default = "admin"
  description = "DB_Username "
  type = string
}

variable "password" {
  default = "test1234"
  description = "DB_Password"
  type = string
}


variable "instance_class" {
  default = "db.t3.micro"
  description = "DB instance class"
  type = string
}

variable "allocated_storage" {
  default = "5"
  description = "DB storage"
  type = string
}

variable "subnet_ids" {
  type = list(string)
  default = ["subnet-02a9e5d00bbb8cc25", "subnet-0644c8c5d8ada7398", "subnet-04fb6726c16bdd4ca"]
}

variable "storage_type" {
  default = "gp2"
  description = "Storage Type"
  type = string
}

variable "vpc_id" {
  type = string
  default = "vpc-043e1dc52827b0366"
  
}