# terraform init  -backend-config="storage_account_name=gitactionsstatekbtest"  -backend-config="container_name=github-actions-state"   -backend-config="key=vm_provisioning/terraform.tfstate" -backend-config="resource_group_name=github-actions-resources" -backend-config="secrets\sp.tfvars"

# terraform plan  -out="plan.out"  -var-file="secrets/sp.tfvars"

# terraform apply -auto-approve  plan.out

# terraform destroy --auto-approve  -var-file="secrets/sp.tfvars"