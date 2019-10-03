def half_pyramid(number_floors)
	number_floors.times do |i|
		puts " " * (number_floors - 1 - i) + "#" * (i + 1)
	end
end

#half_pyramid(5)



def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	number_floors = gets.to_i
	puts "Voici la pyramide : "

	# On initialise le nombre de dièse à 1 pour l'étage le plus haut
	number_dieses = 1

	# On fait une boucle sur le nombre d'étages
	number_floors.times do |i|
		puts " "*(number_floors-1-i) + "#"*number_dieses
		# A chaque nouvel étage, on rajoute deux dièses
		number_dieses += 2
	end 
end




def wtf_pyramid
	print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (nombre d'étage impair)\n> "
	number_floors = gets.to_i


	# Tant que le nombre d'étages saisi est pair,
	while number_floors % 2 == 0 do
		# Redemander la saisie du nombre d'étages
		print "Le nombre d'étages doit être impair. Combien d'étages veux-tu ?\n> "
		number_floors = gets.to_i
	end
 	puts "Voici la pyramide : "


	# Partie supérieure de la pyramide

	# Nombre d'étages pour la partie supérieure de la pyramide. Ce nombre d'étage prend en compte l'étage du milieu, d'où le +1
	number_floors_sens_1 = (number_floors/2 +1)
	# Initialistaion du nombre de dièses à 1 pour l'étage le plus haut
	number_dieses = 1
	# Initialisation du nombre d'espaces pour l'étage le plus haut.
	number_spaces = number_floors_sens_1 - 1
	# On fait une boucle sur le nombre d'étages de la partie supérieure de la pyramide
	number_floors_sens_1.times do
		puts " "*(number_spaces) + "#"*number_dieses
		# A chaque étage on rajoute deux dièses et on enlève un espace
		number_dieses += 2
		number_spaces -= 1
	end
 

 	# Partie inférieure de la pyramide

 	# Nombre d'étages pour la partie inférieure de la pyramide. Ce nombre d'étage ne prend pas en compte l'étage du milieu.
	number_floors_sens_2 = (number_floors/2)
	# Initialisation du nombre d'espaces à 1 pour le premier étage de la partie inférieure.
	number_spaces = 1
	# Initialisation du nombre de dièses
	number_dieses = number_floors-2
	# On fait une boucle sur le nombre d'étages de la partie inférieure de la pyramide
	number_floors_sens_2.times do
		puts " "*(number_spaces) + "#"*number_dieses
		# A chaque étage, on enlève deux dièses et on rajoute un espace
		number_dieses -= 2
		number_spaces +=1

	end
end



# Appel des deux méthodes
full_pyramid
wtf_pyramid

