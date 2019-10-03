def ask_first_name
	puts "Quel est votre nom?"
	first_name = gets.chomp
	return first_name
end




def say_hello(first_name)
	puts "Bonjour, #{first_name} !"


end

ask_first_name
say_hello("Dude")