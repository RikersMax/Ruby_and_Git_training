# encoding: cp1251
puts('How many dice')
num = gets.to_i
num.times do
  puts (rand(6))
end
