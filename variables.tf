variable "project" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "credentials_file" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "network_tags" {
  type = list(string)
}

variable "machine_type" {
  type = string
}

variable "machine_image" {
  type = string
}

variable "disk_size" {
  type = number
}

variable "disk_type" {
  type = string
}

variable "startup_script" {
  type = string
}
