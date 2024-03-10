output "nat"{
  value = module.master.nat_ip
}

output "public1" {
  value = module.master.public1
}

output "public2" {
  value = module.master.public2
}

output "private1" {
  value = module.master.private1
}