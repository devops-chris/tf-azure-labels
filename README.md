# Terraform Azure Labels

## Overview

This repository houses a Terraform module for generating formatted string labels based on the resources provided. The label resources and format names are completely customizable by passing them in, but a default set has been provided.

#### Providers

No providers.

#### Modules

No modules.

#### Resources

No resources.

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | n/a | `string` | `"dev"` | no |
| location | n/a | `string` | `"eastus"` | no |
| locationAbbreviations | n/a | `map(string)` | <pre>{<br>  "australiacentral": "auc",<br>  "australiacentral2": "auc2",<br>  "australiaeast": "aue",<br>  "australiasoutheast": "ause",<br>  "brazilsouth": "brs",<br>  "brazilsoutheast": "brse",<br>  "canadacentral": "canc",<br>  "canadaeast": "cane",<br>  "centralindia": "cin",<br>  "centralus": "cus",<br>  "centraluseuap": "cuseuap",<br>  "eastasia": "ea",<br>  "eastus": "eus",<br>  "eastus2": "eus2",<br>  "eastus2euap": "eus2euap",<br>  "francecentral": "frc",<br>  "francesouth": "frs",<br>  "germanynorth": "gern",<br>  "germanywestcentral": "gerwc",<br>  "japaneast": "jae",<br>  "japanwest": "jaw",<br>  "jioindiacentral": "jioinc",<br>  "jioindiawest": "jioinw",<br>  "koreacentral": "koc",<br>  "koreasouth": "kors",<br>  "northcentralus": "ncus",<br>  "northeurope": "neu",<br>  "norwayeast": "nore",<br>  "norwaywest": "norw",<br>  "southafricanorth": "san",<br>  "southafricawest": "saw",<br>  "southcentralus": "scus",<br>  "southeastasia": "sea",<br>  "southindia": "sin",<br>  "swedencentral": "swc",<br>  "switzerlandnorth": "swn",<br>  "switzerlandwest": "sww",<br>  "uaecentral": "uaec",<br>  "uaenorth": "uaen",<br>  "uksouth": "uks",<br>  "ukwest": "ukw",<br>  "westcentralus": "wcus",<br>  "westeurope": "weu",<br>  "westindia": "win",<br>  "westus": "wus",<br>  "westus2": "wus2",<br>  "westus3": "wus3"<br>}</pre> | no |
| owner | n/a | `string` | `"owner"` | no |
| project | n/a | `string` | `"project"` | no |
| resource\_types | n/a | <pre>map(object({<br>    short_name = string<br>    max_length = number<br>    format     = string<br>  }))</pre> | <pre>{<br>  "azurerm_container_app": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 63,<br>    "short_name": "ca"<br>  },<br>  "azurerm_container_apps_environment": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 63,<br>    "short_name": "cae"<br>  },<br>  "azurerm_container_registry": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 50,<br>    "short_name": "acr"<br>  },<br>  "azurerm_function_app": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "fa"<br>  },<br>  "azurerm_log_analytics_workspace": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 63,<br>    "short_name": "law"<br>  },<br>  "azurerm_logic_app": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "la"<br>  },<br>  "azurerm_monitor": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "mon"<br>  },<br>  "azurerm_network_security_group": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "nsg"<br>  },<br>  "azurerm_postgresql_server": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 63,<br>    "short_name": "psql"<br>  },<br>  "azurerm_private_dns_zone": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "pdz"<br>  },<br>  "azurerm_private_endpoint": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "pe"<br>  },<br>  "azurerm_resource_group": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 90,<br>    "short_name": "rg"<br>  },<br>  "azurerm_storage_account": {<br>    "format": "%s%s%s%s%s%s",<br>    "max_length": 24,<br>    "short_name": "st"<br>  },<br>  "azurerm_storage_container": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 63,<br>    "short_name": "sc"<br>  },<br>  "azurerm_subnet": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "sn"<br>  },<br>  "azurerm_virtual_network": {<br>    "format": "%s-%s-%s-%s-%s-%s",<br>    "max_length": 80,<br>    "short_name": "vnet"<br>  }<br>}</pre> | no |
| workload | n/a | `string` | `""` | no |

#### Outputs

| Name | Description |
|------|-------------|
| resourceNames | n/a |
