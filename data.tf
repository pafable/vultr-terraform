data "vultr_account" "my_acct" {}

data "vultr_region" "my_region" {
  filter {
    name   = "name"
    values = [
        "${var.region}"
    ]
  }
}

data "vultr_plan" "my_plan" {
  filter {
    name   = "name"
    values = [
        "${var.plan}"
    ]
  }
}

data "vultr_os" "my_os" {
  filter {
    name   = "name"
    values = [
        "${var.os}"
    ]
  }
}

data "vultr_ssh_key" "my_ssh_key" {
  filter {
    name = "name"
    values = [
      "${var.ssh_key}"
    ]
  }
}