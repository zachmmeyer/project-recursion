# frozen_string_literal: true

def fibs(number)
  fib_array = [0]
  (number + 1).times do |num|
    if num == 1
      fib_array.push(1)
    elsif num > 1
      fib_array.push(fib_array[num - 1] + fib_array[num - 2])
    end
  end
  fib_array.last
end

puts fibs(10) # Returns 55

def fibs_rec(number)
  number < 2 ? number : fibs_rec(number - 1) + fibs_rec(number - 2)
end

puts fibs_rec(10) # Returns 55
