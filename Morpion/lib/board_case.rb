class BoardCase
attr_accessor :position, :valeur
  
  #cases du plateau
  def initialize(position, valeur)
      @position = position
      @valeur = valeur
      end
end 
my_board = Board.new