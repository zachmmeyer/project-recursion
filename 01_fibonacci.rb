# frozen_string_literal: true

def fibs(number)
  fib_array = [0]
  (number).times do |num|
    if num == 1
      fib_array.push(1)
    elsif num > 1
      fib_array.push(fib_array[num - 1] + fib_array[num - 2])
    end
  end
  fib_array
end

p fibs(10) # Returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fibs_rec(number, array = [0, 1])
  return array.first(number) if array.length >= number
  array << array[-1] + array[-2]
  fibs_rec(number, array)
  # number < 2 ? number : fibs_rec(number - 1) + fibs_rec(number - 2) - THIS IS WRONG HAHA
end

p fibs_rec(10) # Returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
