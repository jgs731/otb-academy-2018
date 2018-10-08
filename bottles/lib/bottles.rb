class Bottles
  def verses(num1, num2)
    bottles_verse=[num1,num2]
    bottles_verse.map do |beer_bottles|
      verse(beer_bottles).split("\n").join  
    end 
  end
    
  def verse(num)
    "#{number_of_bottles(num)} of beer on the wall, #{number_of_bottles2(num)} of beer.
#{bottles_remaining(num)}\n" 
  end

  def bottles_remaining(num)
    remaining_bottles = num - 1
    if remaining_bottles == 0
      "Take it down and pass it around, no more bottles of beer on the wall."
    elsif remaining_bottles == 1
      "Take one down and pass it around, 1 bottle of beer on the wall."
    elsif remaining_bottles < 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, #{remaining_bottles} bottles of beer on the wall."
    end
  end
    
  def number_of_bottles(num)
    if num == 1
      "1 bottle"
    elsif num == 0
      "No more bottles"
    else
      "#{num} bottles"
    end
  end
    
    def number_of_bottles2(num)
    if num == 1
      "1 bottle"
    elsif num == 0
      "no more bottles"
    else
      "#{num} bottles"
    end
  end  
end
