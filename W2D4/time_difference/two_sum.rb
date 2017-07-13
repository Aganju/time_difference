# solution has n^2 time complexity
def bad_two_sum?(array, target)

  array.each_with_index do |val1, i|
    array.each_with_index do |val2, j|
      next if i == j
      return true if val1 + val2 == target
    end
  end
  false
end

def okay_two_sum?(array, target)
  arr = array.sort
  i = 0
  j = array.length - 1
  until i == j
    case arr[i] + arr[j] <=> target
    when 0
      return true
    when -1
      i += 1
    when 1
      j -= 1
    end
  end
  false
end

def two_sum?(array, target)
  hash = Hash.new()

  array.each do |el|
    return true if hash[target - el]
    hash[el] = true
  end
  false
end
