file = File.open("text.txt")
contents = ""
file.each {|line|
    contents << line
}
contents.delete!("\n")
puts(contents)
