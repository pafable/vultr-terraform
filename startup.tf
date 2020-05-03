resource "vultr_startup_script" "my_startup" {
    name = "init.sh"
    script = "yum update -y && yum upgrade -y && yum install wget net-tools vim -y"
}