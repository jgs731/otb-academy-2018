class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end
    
  def verse(number)
    <<~VERSE
      #{remaining_bottles(number).capitalize} #{container(number)} of beer on the wall, #{remaining_bottles(number)} #{container(number)} of beer.
      #{second_line(number)}, #{remaining_bottles(successor(number))} #{container(successor(number))} of beer on the wall.
      VERSE
  end
    
  private
    
  def container(number)
    if number == 1 
      'bottle'
    else
      'bottles'
    end
  end
      
  def lyric_change(number)
    if number == 1
      'it'
    else
      'one'
    end
  end
    
  def remaining_bottles(num)
    if num == 0
      'no more'
    else
      num.to_s
    end
  end
    
  def successor(num)
    if num == 0
      99
    else 
      num - 1
    end
  end

  def second_line(num)
    if num == 0
      'Go to the store and buy some more'
    else
      "Take #{lyric_change(num)} down and pass it around"
    end
  end
end
