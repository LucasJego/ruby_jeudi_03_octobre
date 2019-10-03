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

	j = 1
	number_floors.times do |i|
		puts " "*(number_floors-1-i) + "#"*j
		j += 2
	end 
end



def wtf_pyramid
	print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (nombre d'étage impair)\n> "
	number_floors = gets.to_i


	# Tant que le nombre d'étages saisi est pair,
	while number_floors % 2 == 0 do
		# Redemander la saisie du nombre d'étages
		print "Veuillez saisir un nombre impair. Combien d'étages veux-tu ?\n> "
		number_floors = gets.to_i
	end

	puts "Voici la pyramide : "

	# Partie supérieure de la pyramide
	number_dieses = 1
	number_floors_sens_1 = (number_floors/2 +1)
	number_spaces = number_floors_sens_1 - 1
	number_floors_sens_1.times do
		puts " "*(number_spaces) + "#"*number_dieses
		number_dieses += 2
		number_spaces -= 1
	end
 
 	# Partie inférieure de la pyramide
	number_floors_sens_2 = (number_floors/2)
	number_spaces = 1
	number_dieses = number_floors-2
	number_floors_sens_2.times do
		puts " "*(number_spaces) + "#"*number_dieses
		number_dieses -= 2
		number_spaces +=1

	end
end


#full_pyramid
wtf_pyramid

