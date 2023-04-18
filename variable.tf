variable "tty" {
  type = string
}

output "tt" {
    value =  var.tty
}


resource "local_file" "vv" {
    content = var.tty
    filename = "utf.txt"
  
}

variable "res" {
    type = bool
    default = true
}

output "resout" {
  value = var.res
}

variable "color" {
    type = list(string)
    default = ["us","canada"]
}

output "colout" {
    value = var.color[1]
  
}


