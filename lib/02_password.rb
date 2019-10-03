def signup
	puts "Veuillez saisir un nouveau mot de passe : "
	new_password = gets.chomp
	return new_password
end



new_password = signup

def login(new_password)
	puts "Veuillez rentrez votre mot de passe : "
	password = gets.chomp

	# Tant que le mot de passe rentré n'est pas identique au mot de passe initial contenu dans la variable new_password
	while password != new_password do
		# Afficher que le mot de passe n'est pas le bon et redemander la saisie
		puts "Le mot de passe n'est pas reconnu."
		puts "Veuillez rentrez votre mot de passe : "
		password = gets.chomp
	end

	puts "Ok"

end



def welcome_screen
	puts "Bienvenue dans la zone 'secrete'."
end


#login(new_password)
#signup
#login(new_password)

def perform
	sign = signup
	log = login(new_password)
	welcome


end

#perform





#-----------------------------------------------------------------------------

# En utilisant une variable globale

def signup
	puts "Veuillez saisir un nouveau mot de passe : "
	$new_password = gets.chomp
	return $new_password
end

signup