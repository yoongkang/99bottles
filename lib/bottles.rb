class Bottles

  def verse(num)
    [firstline(num), secondline(num)].map { |s| s + "\n"}.join
  end

  def firstline(num)
    num_bottles = current_bottle(num)
    "#{num_bottles} of beer on the wall, #{num_bottles} of beer."
  end

  def secondline(num)
    "Take #{num == 1 ? "it": "one"} down and pass it around, #{remaining_bottle(num - 1)} of beer on the wall."
  end

  def current_bottle(num)
    if num == 1
      "1 bottle"
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
