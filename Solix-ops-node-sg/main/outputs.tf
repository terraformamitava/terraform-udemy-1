# output "solix_server_name" {
#   description = "The name of the instance"
#   value       = module.ec2.solix_server_name
# }

output "security_group_id1" {
  description = "security group id"
  value       = module.sg.security_group_id_In_SG
}