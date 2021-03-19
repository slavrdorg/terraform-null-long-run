variable "sleep_length" {
  type    = number
  default = 60
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep ${var.sleep_length}"
  }
  triggers = {
    always = uuid()
  }
}
