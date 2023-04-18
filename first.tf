resource "local_file" "foo"{
    content = "Hello!!"
    filename = "hello.txt"
}
resource "local_sensitive_file" "yolo" {
  content_base64  = path.cwd
  filename = "utf.txt"
}

resource "random_string" "stringu" {
  length = 21
  special = false
}

resource "local_file" "foocus" {
  content = "This is the generate string ${random_string.stringu.id}"
  filename = "gg.txt"
  lifecycle {
    create_before_destroy = true
  }
}