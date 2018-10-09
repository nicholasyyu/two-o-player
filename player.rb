class Player

	attr_accessor :player_number
	attr_accessor :player_counter
	attr_accessor :player_lives

	def initialize(player_number)
		@player_number = player_number
		@player_counter = 0
		@player_lives = 3
  	end

  	def update_lives(result)
  		if(result)
  			@player_lives = @player_lives
  		else
  			@player_lives = @player_lives - 1
  		end
  	end

end