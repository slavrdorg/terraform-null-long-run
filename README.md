# Long Terraform Run 

Performs a run with configurable plan and apply duration by using `external` data source and a `null_resource` with `local-exec` provisioner to execute the `sleep` command.

# Input Variables

The available input variables are listed in the table below.

| Variable | Type | Default | Description |
| -------- | ---- | ------- | ----------- |
| sleep_length_plan | `number` | `0` | Desired plan length. A string acceptable to the sleep command.|
| sleep_length_apply | `number` | `0` | Desired apply length. A string acceptable to the sleep command.|
