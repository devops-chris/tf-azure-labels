output "resourceNames" {
  value = local.resourceNames
}

output "tags" {
  value = {
    "Owner"       = var.owner
    "Environment" = var.environment
    "Project"     = var.project
    "Workload"    = var.workload != "" ? var.workload : "Unknown"
  }
}