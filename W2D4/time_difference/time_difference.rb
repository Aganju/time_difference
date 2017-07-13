
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
