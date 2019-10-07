
def add(x,y)
  #x = gets.chomp.to_f
  #y = gets.chomp.to_f
  return (x + y)
end

def subtract(x,y)
  #x = gets.chomp.to_f
  #y = gets.chomp.to_f
  return (x - y)
end

def sum(arr)
  return arr.sum
end


def multiply(x,y)
  #x = gets.chomp.to_f
  #y = gets.chomp.to_f
  return (x * y)
end


def power(x,y)
  return(x**y)
end

def  factorial(n=0)
  (1..n).inject(:*)
end


puts add(120,255)

puts subtract(30,40)

arr = [1,2,3,4,5]

puts sum(arr)

puts multiply(120,120)

puts power(4,10)

puts factorial(0)
puts factorial(1)

puts factorial(2)
puts factorial(5)
puts factorial(10)

puts "fin des calculs"
