# Provision a GCP VM Instance using Terraform

This repo contains terraform configuration written in HCL to provision a preemptible Ubuntu instance

A startup script is included which installs docker in the VM instance

## GCP Service Account

Add your own service account JSON key to the project directory and add the file name to **terraform.tfvars** file under the credentials_file key

## Compute VM Instance Configuration

Replace all other VM instance configuration values with your own in the **terraform.tfvars** file or leave them as is

## Preemptibility

If you want your instance to be preemptible, leave the **main.tf** file as it is

If not, remove the `scheduling{}` section under vm_instance resource

## Provision

Initialize the workspace and load all the necessary modules

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

After the `terraform apply` command, type `yes` when prompted for input to apply the configuration

## Teardown

Teardown everything that you created

```bash
terraform destroy
```

After the `terraform destroy` command, type `yes` when prompted for input to destroy the resources

## Other Commands

You can refer to [Terraform CLI Documentation](https://www.terraform.io/docs/commands/index.html) for all other commands and usage
