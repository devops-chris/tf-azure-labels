variable "owner" {
  type    = string
  default = "owner"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "project" {
  type    = string
  default = "project"
}

variable "workload" {
  type    = string
  default = ""
}

variable "locationAbbreviations" {
  type = map(string)
  default = {
    australiacentral   = "auc"
    australiacentral2  = "auc2"
    australiaeast      = "aue"
    australiasoutheast = "ause"
    brazilsouth        = "brs"
    brazilsoutheast    = "brse"
    canadacentral      = "canc"
    canadaeast         = "cane"
    centralindia       = "cin"
    centralus          = "cus"
    centraluseuap      = "cuseuap"
    eastasia           = "ea"
    eastus             = "eus"
    eastus2            = "eus2"
    eastus2euap        = "eus2euap"
    francecentral      = "frc"
    francesouth        = "frs"
    germanynorth       = "gern"
    germanywestcentral = "gerwc"
    japaneast          = "jae"
    japanwest          = "jaw"
    jioindiacentral    = "jioinc"
    jioindiawest       = "jioinw"
    koreacentral       = "koc"
    koreasouth         = "kors"
    northcentralus     = "ncus"
    northeurope        = "neu"
    norwayeast         = "nore"
    norwaywest         = "norw"
    southafricanorth   = "san"
    southafricawest    = "saw"
    southcentralus     = "scus"
    southeastasia      = "sea"
    southindia         = "sin"
    swedencentral      = "swc"
    switzerlandnorth   = "swn"
    switzerlandwest    = "sww"
    uaecentral         = "uaec"
    uaenorth           = "uaen"
    uksouth            = "uks"
    ukwest             = "ukw"
    westcentralus      = "wcus"
    westeurope         = "weu"
    westindia          = "win"
    westus             = "wus"
    westus2            = "wus2"
    westus3            = "wus3"
  }
}

variable "resource_types" {
  type = map(object({
    short_name = string
    max_length = number
    format     = string
  }))
  default = {
    "azurerm_key_vault" = {
      short_name = "kv"
      max_length = 127
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_resource_group" = {
      short_name = "rg"
      max_length = 90
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_virtual_network" = {
      short_name = "vnet"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_subnet" = {
      short_name = "sn"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_container_app_environment" = {
      short_name = "cae"
      max_length = 60
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_container_app" = {
      short_name = "ca"
      max_length = 63
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_container_registry" = {
      short_name = "acr"
      max_length = 50
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_logic_app" = {
      short_name = "la"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_function_app" = {
      short_name = "fa"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_monitor" = {
      short_name = "mon"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_log_analytics_workspace" = {
      short_name = "law"
      max_length = 63
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_postgresql_server" = {
      short_name = "psql"
      max_length = 63
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_postgresql_flexible_server" = {
      short_name = "psql"
      max_length = 63
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_private_endpoint" = {
      short_name = "pe"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_private_dns_zone" = {
      short_name = "pdz"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_network_security_group" = {
      short_name = "nsg"
      max_length = 80
      format     = "%s-%s-%s-%s-%s-%s"
    }
    "azurerm_storage_account" = {
      short_name = "st"
      max_length = 24
      format     = "%s%s%s%s%s%s"
    }
    "azurerm_storage_container" = {
      short_name = "sc"
      max_length = 63
      format     = "%s-%s-%s-%s-%s-%s"
    }
  }
}