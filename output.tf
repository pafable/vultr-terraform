output "public_ip" {
  value = "${vultr_server.tf_vultr_srv.main_ip}"
}

output "creation_date" {
  value = "${vultr_server.tf_vultr_srv.date_created}"
}

output "hostname" {
  value = "${vultr_server.tf_vultr_srv.hostname}"
}
