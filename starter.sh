# Starter script to execute bash

terraform plan -var-file="starter.tfvars"

echo "yes" | terraform apply -var-file="starter.tfvars"      # Automate reply yes to speed up the process

#    ./starter.sh