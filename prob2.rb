def max_speed speeds1, speeds2, pop
	max = 0
	speeds = speeds1 + speeds2
	speeds.sort.reverse.take(pop).each {|x| max += x}
	return max
end
def min_speed speeds1, speeds2, pop
	min = 0
	pop.times {|x| [speeds1[x],speeds2[x]].max {|y| min += y}}
	return min
end
q = gets.chomp.to_i
pop = gets.chomp.to_i
speeds1 = gets.chomp.split.map{|x| x.to_i }
speeds2 = gets.chomp.split.map{|x| x.to_i }
puts q == 1 ?  min_speed(speeds1, speeds2, pop) :  max_speed(speeds1, speeds2, pop)