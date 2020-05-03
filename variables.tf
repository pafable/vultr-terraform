variable "region" {
    type = string
    default = "New Jersey"
    description = "Region to deploy Vultr resource"
}

variable "plan" {
    type = string
    default = "1024 MB RAM,25 GB SSD,1.00 TB BW"
    description = "Default plan"
}

variable "os" {
    type = string
    default = "CentOS 7 x64"
    description = "OS version"
}

variable "ssh_key" {
    type = string
    default = "jenkins"
    description = "Jenkins SSH key"
}
