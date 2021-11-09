require './Game'
require './Player'

puts "Player 1 name?"
player1_name = gets.chomp 
player1 = Player.new(player1_name)

puts "Player 2 name?"
player2_name = gets.chomp 
player2 = Player.new(player2_name)

new_game = Game.new([player1, player2])


while player1.health > 0 && player2.health > 0 do
  new_game.new_question
end
