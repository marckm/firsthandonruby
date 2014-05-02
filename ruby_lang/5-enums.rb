# symbols in ruby are quite like enums in C#
# a symbol is declared with :
# symbols are a representation to a unique location in memory
# symbols are also very performant because they are precalculated

def display_shape_name(shapeType)
	case shapeType
	when :square then puts "I am a square"
	when :circle then puts "I am a circle"
	when :rectangle then puts "I am a rectangle"
	end
end

display_shape_name(:circle)