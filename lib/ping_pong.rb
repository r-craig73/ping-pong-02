

def ping_pong(number)
  new_array = []
  x = 0
  while (x < number)
    x = x + 1
    if x.%(3).eql?(0)
      new_array.push("ping")
    elsif x.%(5).eql?(0)
      new_array.push("pong")
    else
    new_array.push(x)
    end
  end
  new_array
end
