def ftoc(f)
  puts "temperature in F :"
  f = gets.chomp.to_f
  c=(f*5)/9-32
  return c
end

def ctof(c)
  puts "temperature in C :"
  c = gets.chomp.to_f
  f=(c*9)/5+32 
  return f
end

a=0
f=0.to_f
c=0.to_f

puts "Convert ftoc - f / Convert ctof - c / exit - e"
a = gets.chomp.to_s
if (a== "f")
  puts ftoc(f)
end
if (a=="c")
  puts ctof(c)
end
if (a=="e")
  puts "Ok. Exit"
  return
end 

