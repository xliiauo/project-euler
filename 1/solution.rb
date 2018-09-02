def get number
  result = 0
  (1...number).each do |i|
    result += i if (i % 3 == 0) || (i % 5 ==0)
  end
  result
end

def faster_get target
  sum_divisible_by(target, 3) + sum_divisible_by(target, 5) - sum_divisible_by(target, 15)
end

def sum_divisible_by target, number
  p = target / number
  (1 + p) * p / 2 * number
end

puts get(1000)
puts faster_get(1000)
puts faster_get(1000000000)
