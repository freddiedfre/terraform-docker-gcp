variable "gcp_project" {
    default = "<<NAME OF PROJECT GOES HERE>>"
}

variable "gcp_region" {
    default = "us-east1-b"
}

variable "instance_prefix" {
  description = "Prefix for the instance name"
  type        = "string"
  default     = "gcp-ce"
  
}

variable "machine_type" {
  description = "Machine type to use for the instance"
  type        = "string"
  default     = "f1-micro"
   
}

variable "boot_os_image" {
    description = "The image to use for the boot container"
    type = "string"
    default = "debian-cloud/debian-11"
}
  

data "template_file" "docker-script-build" {
  template = "${file("templates/docker-script-build.tpl")}"
}

data "template_file" "docker-compose-build" {
  template = "${file("templates/docker-compose-build.tpl")}"
}

data "template_file" "execute-shell" {
  template = "${file("templates/execute-shell.tpl")}"
}
