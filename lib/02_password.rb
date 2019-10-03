def signup
	puts "Veuillez saisir un nouveau mot de passe : "
	$new_password = gets.chomp
	return $new_password # Le symbole $ permet de définir une variable globale qui pourra être utilisée en dehors de la méthode signup
end

 
def login
	puts "Veuillez rentrez votre mot de passe : "
	password = gets.chomp

	# Tant que le mot de passe rentré n'est pas identique au mot de passe initial contenu dans la variable new_password
	while password != $new_password do
		# Afficher que le mot de passe n'est pas le bon et redemander la saisie
		puts "Le mot de passe n'est pas reconnu."
		puts "Veuillez rentrez votre mot de passe : "
		password = gets.chomp
	end

	puts "Mot de passe correct."

end


def welcome_screen
	puts "Bienvenue dans la zone 'secrete'."
end



def perform
	signup
	login
	welcome_screen
end

perform