def multiples_of_3_and_5
	
	    i = 0
	    (1...1000).each do |num|
		        if num%3==0 || num%5==0
		            i = i+num
		        end
    		end    

    	puts i
end

multiples_of_3_and_5