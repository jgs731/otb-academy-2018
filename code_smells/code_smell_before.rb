def xyz(&param)
  puts "#{"-" * 15} Start Message #{"-" * 15}"
  message.call
	puts "#{"-" * 15} End of Message #{"-" * 15}"
end

xyz { puts "You've named this method terribly :-/" }

# Repeated conditionals example was our original state of the Bottles exercise
# The four cases *definitely* had scope for refactoring
