class Game

	def initialize(round, player1, player2)
		@round = round
		@player1 = player1
		@player2 = player2
  	end

  	def start
  		i = 0
  		while i <= @round
  			Turn.new(@player1)
  			p "player #{@player1.player_number}: #{@player1.player_lives}/3 VS player #{@player2.player_number}: #{@player2.player_lives}/3"
  			puts
  			Turn.new(@player2)
  			p "player #{@player1.player_number}: #{@player1.player_lives}/3 VS player #{@player2.player_number}: #{@player2.player_lives}/3"
  			puts
  			if (@player1.player_lives == 0) || (@player2.player_lives == 0)
  				break
  			end
  			i += 1
  		end
  		puts
  		p 'Done!'
  		p "Final: player #{@player1.player_number}: #{@player1.player_lives}/3, player #{@player2.player_number}: #{@player2.player_lives}/3"
  	end
end