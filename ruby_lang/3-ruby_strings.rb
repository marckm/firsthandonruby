puts 'I am not multiline\nsentence'
puts "I am multiline\n sentence"

name = "Scott Tiger"
puts "Hello #{name} how are you today?"
puts "Hello " + name + " how are you today?"


ruby = "ruby"
puts ruby.length
puts ruby[2]

# split 
stringToSplit = "col1;col2;col3"
puts stringToSplit.split(';')

# replace
stringForReplace = "Does it work?"
replaced = stringForReplace.gsub('?', '? Yes it works')
puts replaced

#casing
puts "HELLO WORLD".downcase()
puts "hello world".capitalize()
