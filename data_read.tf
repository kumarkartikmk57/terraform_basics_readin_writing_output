data local_file reading{
    filename = "gg.txt"
}
output "displayfile" {
    value = data.local_file.reading.content
  
}