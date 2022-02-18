# frozen_string_literal: true

array = (1..9).to_a.shuffle

p "Unsorted Array: #{array}"

def merge_sort(array)
  if array.size < 2
    array
  else
    left, right = array.each_slice((array.size / 2.0).round).to_a
    left = merge_sort(left)
    right = merge_sort(right)
    temp_array = []
    while left.size.positive? && right.size.positive?
      if left[0] < right[0]
        temp_array.push(left[0])
        left.delete_at(0)
      else
        temp_array.push(right[0])
        right.delete_at(0)
      end
    end
    while left.size.positive?
      temp_array.push(left[0])
      left.delete_at(0)
    end
    while right.size.positive?
      temp_array.push(right[0])
      right.delete_at(0)
    end
    temp_array
  end
end

p "Sorted Array:   #{merge_sort(array)}"

# The psuedocode that got me through the merge portion

# left is equal to [2, 4]
# right is equal to [5]
# temp_array is equal to []
# both arrays are ready for merge
# while left and right have items in array
#   compare the first index of each array
#   push whichever is smaller
#   delete pushed item
# push and delete remaining item
