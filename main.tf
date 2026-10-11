resource "oci_bds_bds_capacity_report" "bds_bds_capacity_reports" {
  for_each = var.bds_bds_capacity_reports

  compartment_id = each.value.compartment_id

  dynamic "shape_availabilities" {
    for_each = each.value.shape_availabilities
    content {
      shape = shape_availabilities.value.shape
      dynamic "shape_config" {
        for_each = shape_availabilities.value.shape_config != null ? [shape_availabilities.value.shape_config] : []
        content {
          memory_in_gbs = shape_config.value.memory_in_gbs
          nvmes         = shape_config.value.nvmes
          ocpus         = shape_config.value.ocpus
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

