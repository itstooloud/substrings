=begin

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
=end

def substrings(string, dictionary)
	

	elements = dictionary.length
	t=0
	matches = []
	matches_hash = Hash.new(0)

	while t < elements do

		
		find_this = dictionary[t]
		unless string.match(find_this).nil?
			matches << find_this
		end
		string = (string.to_a - find_this.to_a).join()
		puts string

		t+=1
		
	end

		


	c = ""
	m = 0

	matches.each do |i|
		
		matches_hash[i] += 1
r
	end



	puts matches_hash
	
end

substrings("this this this ", ["a","be","fits","that", "its"])