# encoding: utf-8
@x = 0
@summ = 0
6.times do
  @x = rand(0..6)
  @summ += @x
end
puts("\nYou got #{@x}")
puts("all sum - #{@summ}")
  
