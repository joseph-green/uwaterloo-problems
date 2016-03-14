def riceball riceballs
	row = riceballs
	moves_made = 1
	until moves_made == 0
		moves_made = 0
		row.each_index do |x|
			if row[x] == row[x+1]
				row[x] += row[x+1]
				row.delete(row[x+1])
				moves_made += 1
			elsif row[x] == row[x+2]
				row[x] += row[x+1] + row[x+2]
				row.delete(row[x+1])
				row.delete(row[x+2])
				moves_made += 1
			end
		end
	end
	return row.max
end
no = gets.chomp
riceballs = gets.chomp.split.map {|i| i.to_i}
puts riceball riceballs