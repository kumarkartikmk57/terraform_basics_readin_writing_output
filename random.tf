resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

resource "local_file" "cc" {
  content = random_integer.rand.id
  filename = "random_gen.txt"
}

resource "random_id" "randid" {
  byte_length = 16
}
resource "local_file" "ccid" {
  content = random_id.randid.id
  filename = "random_text.txt"
}