def subdivide_array(array, num_subdivisiones)
  length = array.length
  result = Array.new(num_subdivisiones) { [] }
  (0...length).each do |i|
    result[i % num_subdivisiones] << array[i]
  end
  max_length = result.map(&:length).max
  result.each do |subarray|
    subarray << nil until subarray.length == max_length
  end
  result
end

array = [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j]
num_subdivisiones = 3
result = subdivide_array(array, num_subdivisiones)
p result
