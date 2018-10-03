def numbers_to_words(num)
	units = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teens = { 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'}
	tens = { 2 => 'twenty' , 3=> 'thirty', 4 => 'fourty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}

	unit_number = num % 100 % 10
	ten_number = num % 100
	hundred_number = num % 10

	if (num > 19 && num < 100)
		our_num = (num / 10) #get tens value
		if (num % 10) == 0 #is can divide by 10 to a whole number
			tens[our_num]
		else
			#else 10 value and unitss
			tens[our_num] + " " + units[num % 10 ] 
		end
	elsif (num > 99)
		our_num = (num / 100) #get hundreds value
		if (num % 100) == 0 #is can divide by 10 to a whole number
			units[our_num] + " hundred" 		
		else
			#else 10 value and unitss
			if (num % 100) >= 10 && (num % 100) < 20 
				units[our_num] + " hundred and " + teens[num % 100]
			elsif (num % 100) > 19
				if (num % 100 % 10) > 0
					units[our_num] + " hundred and " + tens[(num % 100)/10] + " " + units[num %  100 % 10]
				elsif (num % 10) > 0 && (num % 10) <= 9 
					units[our_num] + " hundred and " + tens[(num % 100)/10]
				else
					units[our_num] + " hundred and " + units[num % 100] 
				end
			end
		end	
	elsif (num > 9)
		teens[num]
	else
		units[num]	
	end
	

end
