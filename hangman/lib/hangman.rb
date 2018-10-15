class HangMan
	def word_generator
		'test'
	end
	
	def guess(letter)
		word_hash = {}
		word_generator.split('').each_with_index do |character, index|
			word_hash[index] = {'character' => character, 'correct' => (character == letter)}
		end
		word_hash
	end
	
	def game_progress(hash)
		p hash.keys
		(hash.keys).join('')
	end
	
	def check_remaining_letters
		WordFormatter.new.word_formatter(word_generator)
	end
end

class WordFormatter
#	def initialize(word)
#		@word = word
#	end
#	
	def word_formatter(word)
		word.downcase.gsub(/[a-z]/, '_')
	end
end