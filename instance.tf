resource "vultr_server" "tf_vultr_srv" {
  region_id = "${data.vultr_region.my_region.id}"
  plan_id = "${data.vultr_plan.my_plan.id}"
  os_id = "${data.vultr_os.my_os.id}"
}