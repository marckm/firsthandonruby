# methods can be defined anywhere
# methods must return a value (no void)
# result of the last line of the method is the returned value if 'return' was not used

# method with no params
def method
	puts "I am a poor paramerterless method"
end

def method_with_params(x, y)
	puts x.class 
	puts y.class
end

def add (x, y)
	x + y
end

method
method_with_params 1, "plop" # parenthesis are optional
puts add 1, 3

# predicate methods ends with? => returns a boolean
def is_greater_than_100? (x)
	return x > 100
end

puts is_greater_than_100? 1
puts is_greater_than_100? 101


# methods with ! at the end should be used with caution
# because they will mutate the state of the object
s1 = "hello"
newString = s1.gsub("hello","new") # s1 not replaced
puts "s1: " + s1
puts "newString: " + newString

s1.gsub!("hello","new") # s1 replaced
puts "s1: " + s1
puts "newString: " + newString