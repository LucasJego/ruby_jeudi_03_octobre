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



full_pyramid

