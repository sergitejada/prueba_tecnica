def suma_factorial(num)
  result = 0
  (num).downto(1).each do |i|
    line = ''
    (1..i).to_a.each do |j|
      line += "#{j} + "
    end

    result += i * i
    puts line.chomp(' + ')
  end
end

suma_factorial(10)
