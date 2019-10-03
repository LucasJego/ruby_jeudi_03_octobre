 def game
	# Variable position du joueur. Le joueur se situe initialement sur la 1ère marche.
	position_player = 1

	# Varialbe contenant le nombre de lancers de dés effectués dans une partie initialisée à 0.
	count = 0


		# Tant que le joueur ne se trouve pas sur la dixième marche
		while position_player < 10 do


			# Génération d'un chiffre aléatoire entre 1 et 6
			value_dice = rand(1..6)

			# Si le dé tombe sur la valeur 5 ou 6
			if (value_dice == 5) || (value_dice == 6)
				# Le joueur avance d'une marche et le programme le lui dit, ainsi que la marche où il se trouve
				position_player += 1
				#puts "Tu avances d'une marche !\nTu te trouves à présent sur la marche n°#{position_player}."
			
			# Si le dé tombe sur la valeur 1
			elsif value_dice == 1
				# Le joueur descend d'une marche et le programme le lui dit, ainsi que la marche où il se trouve
				position_player -= 1
				#puts "Tu recules d'une marche :(\nTu te trouves à présent sur la marche n°#{position_player}."
			
			# Si le dé tombe sur les autres valeurs (2, 3 ou 4)
			else
				# Il ne se passe rien et le programme le lui dit, ainsi que la marche sur laquelle il est toujours
				#puts "Tu ne bouges pas !\nTu te trouves toujours sur la marche n°#{position_player}."
			end

			# Incrémente de 1 le nombre de lancers de dé.
			count += 1
			
		end

		# Lorsque le joueur atteint la dixième marche (position_player = 10), le programme sort de la boucle while et affiche un message de réussite.
		#puts "Youpi !"	
	
	# La méthode game retourne la valeur du nombre de lancers nécessaires pour atteindre la 10ème marche.
	return count

end




def average_finish_time

	# On définit un tableau qui contiendra ensuite tous les nombres de lancers de dé nécessaires pour arriver à la 10ème marche sur 100 parties.
	list_number_of_rolls = []

	# Tant que le nombre final de lancers de dé est inférieur à 100 dans le tableau,
	while list_number_of_rolls.size < 100 do
		# Ajouter au tableau la valeur retournée par la méthode game (à savoir le nombre de lancers de dé nécessaire pour atteindre la 10ème marche).
		list_number_of_rolls << game
	end

	# Calcul de la moyenne des nombres de lancers de dé entrés dans le tableau
	average = list_number_of_rolls.sum / list_number_of_rolls.size
	# Affichage du nombre moyen de lancers de dé pour finir le jeu.
	puts "Nombre de lancers de dé moyen pour arriver à la 10ème marche : #{average}"
end

# Appel de la méthode average_finish_time
average_finish_time 