vpc_cidr="10.30.1.0/16"

/* Apply with Variable at run time:
$ terraform apply --var "vpc_cidr=10.30.0.0/16" --auto-approve

Apply with Variable at run time from :
$ terraform apply --var-file=dev.tfvars --auto-approve */

/* WORKSPACE:
Aditri Sinha@DESKTOP-IGIMIUP MINGW64 ~/Documents/Terraform
$ terraform workspace select dev

Aditri Sinha@DESKTOP-IGIMIUP MINGW64 ~/Documents/Terraform
$ terraform apply --auto-approve

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Aditri Sinha@DESKTOP-IGIMIUP MINGW64 ~/Documents/Terraform
$ terraform workspace select prod
Switched to workspace "prod".

Aditri Sinha@DESKTOP-IGIMIUP MINGW64 ~/Documents/Terraform
$ terraform apply --auto-approve */
