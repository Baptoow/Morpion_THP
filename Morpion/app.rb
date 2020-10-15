require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'

my_game = Game.new
