output "bds_bds_capacity_reports_id" {
  description = "Map of id values across all bds_bds_capacity_reports, keyed the same as var.bds_bds_capacity_reports except keys with no id are omitted"
  value       = { for k, v in oci_bds_bds_capacity_report.bds_bds_capacity_reports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_capacity_reports_compartment_id" {
  description = "Map of compartment_id values across all bds_bds_capacity_reports, keyed the same as var.bds_bds_capacity_reports except keys with no compartment_id are omitted"
  value       = { for k, v in oci_bds_bds_capacity_report.bds_bds_capacity_reports : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "bds_bds_capacity_reports_shape_availabilities" {
  description = "Map of shape_availabilities values across all bds_bds_capacity_reports, keyed the same as var.bds_bds_capacity_reports except keys with no shape_availabilities are omitted"
  value       = { for k, v in oci_bds_bds_capacity_report.bds_bds_capacity_reports : k => v.shape_availabilities if v.shape_availabilities != null && length(v.shape_availabilities) > 0 }
}
output "bds_bds_capacity_reports_time_created" {
  description = "Map of time_created values across all bds_bds_capacity_reports, keyed the same as var.bds_bds_capacity_reports except keys with no time_created are omitted"
  value       = { for k, v in oci_bds_bds_capacity_report.bds_bds_capacity_reports : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

