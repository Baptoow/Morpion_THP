require 'pry'

class Player
  attr_accessor :name, :signe

  def initialize(name,signe)
    @name = name
    @signe = "X" || "O"
  end

binding.pry
end
