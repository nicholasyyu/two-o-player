class Turn
	
	def initialize(player)

		new_question = Questions.new
		puts
		p "---New Turn---"
		p "player #{player.player_number}: #{new_question.question}"
		puts "Enter Answer:"
		answer = gets.chomp
		result = new_question.correct?(answer.to_i)
		player.update_lives(result)
		if result == true
			p "player #{player.player_number}: YES! You are correct!"
		else
			p "player #{player.player_number}: Seriously?! NO!"
		end

	end

end