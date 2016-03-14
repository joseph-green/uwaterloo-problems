def wildcard_anagram? word, wildcard
	word_arr = word.split("")
	wildcard_arr = wildcard.split("")
	wildcard_arr.each do |x|
		next if x == "*"
		return false unless word_arr.include?(x)
		word_arr.delete_at(word_arr.index(x))
	end 
	return true
end
puts wildcard_anagram? "aab", "*b*"
puts wildcard_anagram? "abba", "baaa"
puts wildcard_anagram? "cccrocks", "socc*rk*"