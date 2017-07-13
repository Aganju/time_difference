def windowed_max_range(array, window)
  current_max = nil

  windows = array.each_cons(window)

  windows.each do |wind|
    diff = wind.max - wind.min
    current_max = diff if current_max.nil? || diff > current_max
  end
  current_max
end
