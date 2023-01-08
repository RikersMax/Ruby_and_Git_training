# encoding: cp1251
#puts('How many dice')
#num = gets.to_i
5.times do
x = (rand(0..6))
if x == 0
  puts ('edge')
else
  if x.even?
    puts ('eagle')
  elsif x.odd?
    puts ('tails')
  end
end
end
