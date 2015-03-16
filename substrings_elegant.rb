=begin

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
=end

def substrings(string, dictionary)
	

	elements = dictionary.length
	t=0
	matches_hash = Hash.new(0)


	string = string.downcase

	while t < elements do

		find_this = dictionary[t]

		unless string.match(find_this).nil?
			matches_hash[find_this] = string.scan(/#{find_this}/).count
		end
		
		t+=1
		
	end

puts matches_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)