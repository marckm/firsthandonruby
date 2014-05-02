class Car

I_AM_A_CONSTANT = "Cannot change"
$path = "Global variable"

def set_id (new_id)

	@id = new_id

end

def set_text(new_text)

	@@text = new_text

end


def print ()
	local = "i'm a local variable"
	puts local
	puts @id
	puts @@text
	puts ""
end

end

car1 = Car.new
car2 = Car.new

car1.set_text("plop")
car1.set_id(1)
car1.print
car2.print

car2.set_text("changed static text")
car2.set_id(3)
car1.print
car2.print