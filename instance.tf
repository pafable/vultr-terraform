resource "vultr_server" "tf_vultr_srv" {
  auto_backup = false
  hostname = "${var.instance_hostname}"
  label = "${var.instance_label}"
  os_id = "${data.vultr_os.my_os.id}"
  plan_id = "${data.vultr_plan.my_plan.id}"
  region_id = "${data.vultr_region.my_region.id}"
  script_id = "${vultr_startup_script.my_startup.id}"
  ssh_key_ids = [
    "${data.vultr_ssh_key.my_ssh_key.id}"
  ]
  tag = "${var.instance_tag}"
  notify_activate = true
}