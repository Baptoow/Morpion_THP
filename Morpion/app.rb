require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#choose name

puts " >> Entrez le nom du player 1 :"
name = gets.chomp
player1 = Player.new("#{name}")

puts " >> Entrez le nom du player 2 :"
name = gets.chomp
player2 = Player.new("#{name}")
binding.pry 