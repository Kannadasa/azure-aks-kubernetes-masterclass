# https://www.terraform.io/docs/configuration/variables.html
# Input Variables
# Output Values
# Local Values (Optional)

# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location

variable "location" {
  default     = "uksouth"
  description = "This will be the location where all resources will be created"
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "This variable defines the resource group name"
  default     = "terraform-aks-rg"

}

variable "environment" {
  type        = string
  description = "This variable defines the env"
  default     = "dev"

}

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default     = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}