class Bottles
	def sing
		verses(99,0)
	end
	
	def verses(start, finish)
		(start).downto(finish).map do |verse_number|
			verse(verse_number)
		end.join("\n")
	end
	
	def verse(number)
		bottle_number = BottleNumber.for(number) # conditional method to get the relevant class
		next_bottle_number = bottle_number.successor
		"#{(bottle_number.to_s).capitalize} of beer on the wall, #{(bottle_number.to_s)} of beer.
#{bottle_number.action}, #{next_bottle_number} of beer on the wall.
"
	end
end

class BottleNumber
	attr_reader :number
	
	def initialize(number)
		@number = number
	end
	
	def self.for(number)
		if number == 0
			BottleNumberZero.new(number)
		elsif number == 1
			BottleNumberOne.new(number)
		elsif number == 4
			BottleNumberFour.new(number)
		elsif number == 6
			BottleNumberSix.new(number)
		elsif number == 10
			BottleNumberTen.new(number)
		else
			BottleNumber.new(number)
		end
	end
	
	def action
		"Take #{pronoun} down and pass it around"
	end
	
	def pronoun
		'one'
	end
	
	def bottle_or_bottles
		'bottles'
	end
	
	def remaining_bottles
		number.to_s
	end	
	
	def to_s
		"#{remaining_bottles} #{bottle_or_bottles}"
	end
	
	def successor
		BottleNumber.for(number - 1)
	end
end

class BottleNumberOne < BottleNumber
	def pronoun #this method overrides the superclass method
		'it'
	end
	
	def bottle_or_bottles #ditto (and for other 'special cases')
		'bottle'
	end
end

class BottleNumberZero < BottleNumber		
	def successor
		BottleNumber.for(99)
	end
	
	def remaining_bottles
		'no more'
	end
	
	def action
		'Go to the store and buy some more'
	end
end

class BottleNumberTen < BottleNumber
	def to_s
		"one #{remaining_bottles} pack"
	end
end

class BottleNumberSix < BottleNumber
	def to_s
		"one #{remaining_bottles} pack"
	end
end

class BottleNumberFour < BottleNumber
	def to_s
		"one #{remaining_bottles} pack"
	end
end