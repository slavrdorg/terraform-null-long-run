variable "sleep_length_plan" {
  type    = string
  default = "0"
  description = "Desired plan length. A string acceptable to the sleep command."
}

variable "sleep_length_apply" {
  type    = string
  default = "0"
  description = "Desired apply length. A string acceptable to the sleep command."
}

data "external" "sleep" {
  program = ["${path.module}/sleep.sh", var.sleep_length_plan]
} 

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep ${var.sleep_length_apply}"
  }
  triggers = {
    always = uuid()
  }
}
