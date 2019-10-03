def average_finish_time
	# Variable position du joueur
	position_player = 1

	count = 0
	

	# Tant que le joueur ne se trouve pas sur la dixième marche
	while position_player < 10 do


		# Génération d'un chiffre aléatoire entre 1 et 6
		value_dice = rand(1..6)

		# Si le dé tombe sur la valeur 5 ou 6
		if (value_dice == 5) || (value_dice == 6)
			# Le joueur avance d'une marche et le programme lui dit ainsi que la marche où il se trouve
			position_player += 1
			puts "Tu avances d'une marche !\nTu te trouves à présent sur la marche n°#{position_player}."
		
		# Si le dé tombe sur la valeur 1
		elsif value_dice == 1
			# Le joueur descend d'une marche et le programme lui dit ainsi que la marche où il se trouve
			position_player -= 1
			puts "Tu recules d'une marche :(\nTu te trouves à présent sur la marche n°#{position_player}."
		
		# Si le dé tombe sur les autres valeurs (2, 3 ou 4)
		else
			# Il ne se passe rien et le programme le lui dit, ainsi que la marche sur laquelle il est toujours
			puts "Tu ne bouges pas !\nTu te trouves toujours sur la marche n°#{position_player}."
		end

		count += 1
	end

	# Lorsque le joueur atteint la dixième marche (position_player = 10), le programme sort de la boucle while et affiche un message de réussite.
	puts "Youpi !"
	puts count


end

average_finish_time