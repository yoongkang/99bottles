class Bottles
  def verse(num)
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"\
      "Take one down and pass it around, #{num-1} bottle#{num > 2 ? "s" : ""} of beer on the wall.\n"
  end
end
