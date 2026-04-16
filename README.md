# Terraform Azure Multi-Subscription Deployment

Deploy resources across multiple Azure subscriptions from a single Terraform configuration using aliased providers.

This example creates a **resource group** and a **storage account** in each of three Azure subscriptions, with [CAF-compliant naming](https://github.com/Azure/terraform-azurerm-naming) applied automatically.

## Architecture

| Subscription | Provider Alias | Default Region   | Resources Created                |
|--------------|----------------|------------------|----------------------------------|
| 1            | `azurerm.sub1` | switzerlandnorth | Resource Group, Storage Account  |
| 2            | `azurerm.sub2` | norwayeast       | Resource Group, Storage Account  |
| 3            | `azurerm.sub3` | swedencentral    | Resource Group, Storage Account  |

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) >= 1.3
- An Azure account with access to three subscriptions
- Authenticated via Azure CLI (`az login`) or a service principal

## Quick Start

1. **Clone the repository**

   ```bash
   git clone https://github.com/<your-org>/terraform-azure-multi-subscription-deployment.git
   cd terraform-azure-multi-subscription-deployment
   ```

2. **Set your subscription IDs**

   Edit `terraform.tfvars` and replace the placeholder values:

   ```hcl
   subscription_id_1 = "<subscription-1-id>"
   subscription_id_2 = "<subscription-2-id>"
   subscription_id_3 = "<subscription-3-id>"
   ```

3. **Deploy**

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Variables

| Name               | Description                          | Default            | Required |
|--------------------|--------------------------------------|--------------------|----------|
| `subscription_id_1`| Azure Subscription ID for environment 1 | —               | yes      |
| `subscription_id_2`| Azure Subscription ID for environment 2 | —               | yes      |
| `subscription_id_3`| Azure Subscription ID for environment 3 | —               | yes      |
| `location_1`       | Azure region for Subscription 1      | `switzerlandnorth` | no       |
| `location_2`       | Azure region for Subscription 2      | `norwayeast`       | no       |
| `location_3`       | Azure region for Subscription 3      | `swedencentral`    | no       |
| `prefix`           | Project prefix for CAF naming        | `demo`             | no       |

## Outputs

| Name                        | Description                              |
|-----------------------------|------------------------------------------|
| `sub1_resource_group_name`  | Resource group name in Subscription 1    |
| `sub1_storage_account_name` | Storage account name in Subscription 1   |
| `sub2_resource_group_name`  | Resource group name in Subscription 2    |
| `sub2_storage_account_name` | Storage account name in Subscription 2   |
| `sub3_resource_group_name`  | Resource group name in Subscription 3    |
| `sub3_storage_account_name` | Storage account name in Subscription 3   |

## Clean Up

```bash
terraform destroy
```

## License

This project is licensed under the [MIT License](LICENSE).

## Credits

Written by: Sarah Lean

[![YouTube Channel Subscribers](https://img.shields.io/youtube/channel/subscribers/UCQ8U53KvEX2JuCe48MxmV3Q?label=People%20subscribed%20to%20my%20YouTube%20channel&style=social)](https://www.youtube.com/techielass?sub_confirmation=1) [![Twitter Follow](https://img.shields.io/twitter/follow/techielass?label=Twitter%20Followers&style=social)](https://twitter.com/intent/follow?screen_name=techielass)

Find me on:

* My Blog: <https://www.techielass.com>
* Twitter: <https://twitter.com/techielass>
* LinkedIn: <http://uk.linkedin.com/in/sazlean>
* Github: <https://github.com/weeyin83>