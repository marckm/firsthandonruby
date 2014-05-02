# self is like this BUT it has different meaning depending on the location where it is called
puts self

class Person

	# self here represent the class level (NOT INSTANCE)
	puts self

	# there is no constructor
	# but there is initialize method
	def initialize(id, name)
		@db_id = id
		@id= id
		@name = name
	end

	# methods are public
	def show_name
		puts @name
	end

	def set_name!(name)
		puts self
		@name = name
	end

	# static methods
	def self.this_method_is_static
		puts "I am static "
	end

	# if we want to override a method, we just need to create a method here with same signature & name
	def to_s()
		puts "person: db_id: #{@db_id} #{@id} #{@name}"
	end

	# instance variables are private
	# so we need to add properties if we want to access field values from outside
	
	# getter:
	def id
		@id
	end

	# setter:
	def id=(value)
		@id = value
	end

	# shortcup for rw properties
	attr_accessor :name, :age

	# readonly property
	attr_reader :db_id

	# write only attr
	attr_writer :address
end

# creates a new instance
luke = Person.new 1, "Luc"
luke.show_name
luke.set_name!("Luke")
puts luke.name

luke.age = 35
puts "age: #{luke.age}"

puts "id: " + luke.id.to_s
luke.id = 2
puts "id: " + luke.id.to_s


Person.this_method_is_static
puts luke



## HERITAGE
class A
	def main_method
		method1
	end

	# protected methods can only be called by classes that inherts from A
	def method1
		puts "hello1 from #{self.class}"
	end

	private
	def method2
		puts "hello2 from #{self.class}"
	end
end

class B < A
	def main_method
		method1
	end
end

class C < A
	def main_method
		method2

		# demonstrates the call to protected method on A
		a = A.new
		a.method1
	end
end

A.new.main_method
B.new.main_method
C.new.main_method