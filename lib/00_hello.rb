def hello
	puts "Hello!"
end

def greet(name)
	print ""
	name = gets.chomp.to_s
	puts "Hello, #{name}!"
end

hello
name = ""
greet(name)

