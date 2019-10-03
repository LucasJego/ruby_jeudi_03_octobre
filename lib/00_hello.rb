# Fonction qui prend en valeur la variable first_name et qui affiche "Bonjour + first_name"
def say_hello(first_name)
	puts "Bonjour, #{first_name} !"
end


# Fonction qui demande le nom de l'utilisateur et et qui renvoie ce nom
def ask_first_name
	puts "Quel est votre nom?"
	first_name = gets.chomp
	return first_name
end



# Fonction qui met dans une variable first_name le résultat de la fonction ask_first_name et qui appelle la fonction say_hello avec comme variable le résultat de la fonction ask_first_name
def perform

	first_name = ask_first_name
	say_hello(first_name)
end


perform