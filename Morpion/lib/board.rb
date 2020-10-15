class Board
 attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3

  def initialize
    #chaque elements du plateau 
    @A1 = BoardCase.new("A1"," ")
    @A2 = BoardCase.new("A2"," ")
    @A3 = BoardCase.new("A3"," ")
    @B1 = BoardCase.new("B1"," ")
    @B2 = BoardCase.new("B2"," ")
    @B3 = BoardCase.new("B3"," ")
    @C1 = BoardCase.new("C1"," ")
    @C2 = BoardCase.new("C2"," ")
    @C3 = BoardCase.new("C3"," ")
  end
  
  def plateau
  puts "             1                 2                     3"
  puts "="*60
  puts"A |"+"#{@A1.valeur}"+" "*19+"|"+"#{@A2.valeur}"+" "*19+"|"+"#{@A3.valeur}"+" "*15+"|"
  puts"  |"+" "*20+"|"+" "*20+"|"+" "*16+"|"
  puts"-"*60
  puts"B |"+"#{@B1.valeur}"+" "*19+"|"+"#{@B2.valeur}"+" "*19+"|"+"#{@B3.valeur}"+" "*15+"|"
  puts"  |"+" "*20+"|"+" "*20+"|"+" "*16+"|"
  puts"-"*60
  puts"C |"+"#{@C1.valeur}"+" "*19+"|"+"#{@C2.valeur}"+" "*19+"|"+"#{@C3.valeur}"+" "*15+"|"
  puts"  |"+" "*20+"|"+" "*20+"|"+" "*16+"|"
  puts"="*60
  end
end
