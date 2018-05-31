class Bottles

  def verse(num)
    [firstline(num), secondline(num)].map { |s| s + "\n"}.join
  end

  def firstline(num)
    "#{num} bottles of beer on the wall, #{num} bottles of beer."
  end

  def secondline(num)
    s = num > 2 ? "s" : ""
    "Take one down and pass it around, #{num-1} bottle#{s} of beer on the wall."
  end
end
