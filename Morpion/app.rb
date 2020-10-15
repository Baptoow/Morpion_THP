require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'board'
require 'board_case'

my_game = Game.new
my_game.turn

