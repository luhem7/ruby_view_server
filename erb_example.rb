require 'erb'

x = 42
myString = "The value of x is: <%= x %>\n" +
	"Now we are going to increment x in-situ:\n" +
	"The value of x is: <%= x += 1 %>\n "
	
template = ERB.new myString
puts template.result(binding)