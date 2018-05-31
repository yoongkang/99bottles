class Bottles

  def verse(num)
    [firstline(num), secondline(num)].map { |s| s + "\n"}.join
  end

  def verses(num1, num2)
    nums = (num2..num1).to_a.reverse
    nums.map { |n| verse(n) }.join("\n")
  end

  def firstline(num)
    num_bottles = current_bottle(num)
    "#{num_bottles} of beer on the wall, #{num_bottles.downcase} of beer."
  end

  def secondline(num)
    if num > 0
      "Take #{num == 1 ? "it": "one"} down and pass it around, #{remaining_bottle(num - 1)} of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

  def current_bottle(num)
    if num == 1
      "1 bottle"
    elsif num == 0
      "No more bottles"
    else
      "#{num} bottles"
    end
  end

  def remaining_bottle(num)
    if num == 1
      "1 bottle"
    elsif num == 0
      "no more bottles"
    else
      "#{num} bottles"
    end
  end
end
