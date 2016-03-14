def circle_of_life gens, original
	string = original
	new_string = []
	gens.times do |x|
		new_string = []
		original.each_index {|y| (string[y-1] == 1 && string[y+1-string.length] == 0) || (string[y-1] == 0 && string[y+1-string.length] == 1) ? new_string << 1 : new_string << 0 }
		string = new_string
	end
	return string.join("")
end
gens = gets.chomp.split[1].to_i
original = gets.chomp.split("").map {|i| i.to_i}
puts circle_of_life gens, original