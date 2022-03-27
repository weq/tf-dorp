variable "location" {
  description = "Which datacenter in Azure should these resources be deployed to?"
  type = string
  default = "location"
}

variable "tags" {
  description = "A default set of tags for Azure resources."
  type = map(string)
  default = {
    ProvisionedBy = "Terraform"
    Environment = "Development"
  }
}

variable "tenant_id" {
  description = "ScanReachs Azure Tentant ID"
  type = string
  default = "5f92765f-23af-4383-8724-16b0db42ffd7"
}

variable "dev_subscription_id" {
  description = "Development subscription ID"
  type = string
  default = "f78c83a5-c7fb-4df3-b1c1-84d642020660"
}

variable "test_subscription_id" {
  description = "Test subscription ID"
  type = string
  default = "39c1fe1e-5205-4ac5-933a-2ade1c2a73fa"
}

variable "prod_subscription_id" {
  description = "Production subscription ID"
  type = string
  default = "872555ec-d993-4154-9c02-5b8554c1486d"
}