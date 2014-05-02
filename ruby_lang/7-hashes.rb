# init
employees = Hash.new
score = { "Mary" => 100, "Sarah" => 500 }

# adding a new entry
score["Scott"] = 1
score[:barry] = 400

puts score["Mary"]
puts score