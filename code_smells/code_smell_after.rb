def process_block_message(&message)
  puts "#{separator} Start Message #{separator}"
  message.call
	puts "#{separator} End of Message #{separator}"
end

def separator
	"-" * 10
end

process_block_message { puts "You've named this method wisely :-)" }