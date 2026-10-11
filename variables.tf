variable "bds_bds_capacity_reports" {
  description = <<EOT
Map of bds_bds_capacity_reports, attributes below
Required:
    - compartment_id
    - shape_availabilities (block):
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    shape_availabilities = list(object({
      shape = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_capacity_reports : (
        length(v.shape_availabilities) >= 1
      )
    ])
    error_message = "Each shape_availabilities list must contain at least 1 items"
  }
}

