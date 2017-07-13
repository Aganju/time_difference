
def my_min(array)

  min = array.first

  array.each do |el|
    array.each do|el2|
      min = el2 if el2 < el && el2 < min
      min = el if el < el2 && el < min
    end
  end
  min
end

def my_min_2(array)

  min = array.first

  array.each do |el|
    min = el if el < min
  end
  min
end

def largest_contiguous_subsum(array)

  sub_arr = []

  (0...array.size).each do |i|
    (i...array.size).each do|j|
      sub_arr<< array[i..j]
    end
  end

  sub_arr.map! do |subs|
    subs.inject(&:+)
  end

  sub_arr.max

end

def largest_contiguous_subsum2(array)

  max = array.first
  current_max = 0

  array.each do |el|
    current_max += el
    max = current_max if current_max > max
    current_max = 0 if current_max < 0
  end

  max
end
