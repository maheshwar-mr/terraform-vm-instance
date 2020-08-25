# Provisioning a Google Compute VM Instance using Terraform

This repo contains terraform configuration in HCL to launch a preemptible Ubuntu instance

## GCP Service Account

Add your own service account JSON key to the project directory and add the file name to **terraform.tfvars** file under the credentials_file key

## VM Instance Details

Replace all other VM instance configuration values with your own in the **terraform.tfvars** file or leave them as is

## Preemptibility

If you want your instance to be preemptible, leave the main.tf file as it is.

If not, remove the **scheduling** section under vm_instance resource

## Commands

Load all the necessary modules

```bash
terraform init
```

See the resources to be added, changed or deleted

```bash
terraform plan
```

Provision the resources

```bash
terraform apply
```

After the **apply** command, type **yes** when prompted for input to apply the configuration
