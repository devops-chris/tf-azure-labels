

locals {
  resourceNames = { for x, y in var.resource_types :
    x => substr(replace(lower(format(
      y.format,
      var.owner,
      var.project,
      var.environment,
      lookup(var.locationAbbreviations, var.location, var.location),
      var.workload,
      y.short_name
      )),
      "--",
    "-"), -y.max_length, -1)
  }
}