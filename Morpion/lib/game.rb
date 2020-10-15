require 'bundler'
Bundler.require

class Game

  def initialize
    puts " >> Entrez le nom du player 1 :"
    name = gets.chomp
    signe = "X"
    player1 = Player.new("#{name}","#{signe}")

    puts " >> Entrez le nom du player 2 :"
    name = gets.chomp
    signe = "O"
    player2 = Player.new("#{name}","#{signe}")
    puts player1.name
    puts player1.signe
  end

  #binding.pry
end
