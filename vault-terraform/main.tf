#------------------------------------------------------------------------------
# The best practice is to use remote state file and encrypt it since your
# state files may contains sensitive data (secrets).
#------------------------------------------------------------------------------
terraform {
  required_version = ">=1.0.0"
  required_providers {
      vault = {
          source  = "hashicorp/vault"
          version = ">=3.4.1"
      }
  }
#       backend "s3" {
#             bucket = "remote-terraform-state-dev"
#             encrypt = true
#             key = "terraform.tfstate"
#             region = "us-east-1"
#       }
}


# Use Vault provider
provider "vault" {
  # It is strongly recommended to configure this provider through the
  # environment variables:
    // - VAULT_ADDR
    // - VAULT_TOKEN
    // - VAULT_CACERT
    // - VAULT_CAPATH 
}
