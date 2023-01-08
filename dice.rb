# encoding: cp1251
x = 0
summ = 0
6.times do
  x = rand(0..6)
  summ += x
  print("\r#{x}")
  sleep 1
end
puts("\nYou got #{x}")
puts("all sum - #{summ}")

