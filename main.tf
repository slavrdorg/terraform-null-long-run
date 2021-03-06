variable "sleep_length_plan" {
  type    = number
  default = 0
  description = "Desired plan length."
}

variable "sleep_length_apply" {
  type    = number
  default = 0
  description = "Desired apply length."
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
