# creates and populates an aray
colors = Array.new

colors.push("green")
colors.push("yellow")
colors[1] = "red"
colors << "white"

puts colors

# size
puts colors.length
puts colors.size

otherColors= ["blue", "pink"]
colors = colors + otherColors

puts colors.size
puts colors

# methods
puts "first #{colors.first}"
puts "last #{colors.last}"

# sekect method returs all values that are found
# takes a "block" as parameter (like a lambda expression

# example 1 
puts ""
puts "select example for letter 'r'"
results = colors.select do |c|
	c =~ /r/ # =~ is to checjk if the string matches a regex
end

puts results

# same example on one line
puts "select example for letter 'b'"
results = colors.select { |c| c =~ /b/ }
puts results

# example 2 : find method
# find method only returns first element that matches
results = colors.find { |c| c =~ /r/}
puts "find method result:"
puts results

# example 3 grep
results = colors.grep(/r/)
puts "grep result"
puts results


# delete items
puts ("> deletion")
colors.delete("yellow")
colors.delete_at(0)
puts colors