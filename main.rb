# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './game'
require './questions'
require './turn'
require './player'

player1 = Player.new(1)
player2 = Player.new(2)

Game.new(5, player1, player2).start
