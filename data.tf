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