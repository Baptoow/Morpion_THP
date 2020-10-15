require 'bundler'
Bundler.require

class Game
  def initialize
    #créer les joureur avec leu noms
    puts " >> Entrez le nom du player 1 :"
    name = gets.chomp
    signe = "X"
    player1 = Player.new("#{name}","#{signe}")
    puts "==> Joueur n°1 #{player1.name}"
    puts " >> Entrez le nom du player 2 :"
    name = gets.chomp
    signe = "O"
    player2 = Player.new("#{name}","#{signe}")
    puts "==> Joueur n°2 #{player2.name}"
    @my_board = Board.new
  end

  def menu0
    #menu0 car deux menus un pour les 0 un pour les X
      puts "="*60
      puts "--- qu'allez-vous faire ? ---\n\n"
      puts "Tapez :1 pour jouer case A1"
      puts "Tapez :2 pour jouer case A2" 
      puts "Tapez :3 pour jouer case A3"
      puts "Tapez :4 pour jouer case B1" 
      puts "Tapez :5 pour jouer case B2"
      puts "Tapez :6 pour jouer case B3" 
      puts "Tapez :7 pour jouer case C1"
      puts "Tapez :8 pour jouer case C2" 
      puts "Tapez :9 pour jouer case C3"
      puts "-"*60
      puts
      result = gets.chomp
      
      if result == "1"
        @my_board.A1.valeur = "0"
      elsif result == "2"
        @my_board.A2.valeur = "0"
      elsif result == "3"
        @my_board.A3.valeur = "0"
      elsif result == "4"
        @my_board.B1.valeur = "0"
      elsif result == "5"
        @my_board.B2.valeur = "0"
      elsif result == "6"
        @my_board.B3.valeur = "0"
      elsif result == "7"
        @my_board.C1.valeur = "0"
      elsif result == "8"
        @my_board.C2.valeur = "0"
      elsif result == "9"
        @my_board.C3.valeur = "0"
      end
  end

#deuxieme menu pour renvoyer X un coup sur deux :(
  def menuX
    puts "="*60
    puts "--- qu'allez-vous faire ? ---\n\n"
    puts "Tapez :1 pour jouer case A1"
    puts "Tapez :2 pour jouer case A2" 
    puts "Tapez :3 pour jouer case A3"
    puts "Tapez :4 pour jouer case B1" 
    puts "Tapez :5 pour jouer case B2"
    puts "Tapez :6 pour jouer case B3" 
    puts "Tapez :7 pour jouer case C1"
    puts "Tapez :8 pour jouer case C2" 
    puts "Tapez :9 pour jouer case C3"
    puts "-"*60
    puts
    result = gets.chomp
    
    if result == "1"
      @my_board.A1.valeur = "X"
    elsif result == "2"
      @my_board.A2.valeur = "X"
    elsif result == "3"
      @my_board.A3.valeur = "X"
    elsif result == "4"
      @my_board.B1.valeur = "X"
    elsif result == "5"
      @my_board.B2.valeur = "X"
    elsif result == "6"
      @my_board.B3.valeur = "X"
    elsif result == "7"
      @my_board.C1.valeur = "X"
    elsif result == "8"
      @my_board.C2.valeur = "X"
    elsif result == "9"
      @my_board.C3.valeur = "x"
    end
end
  #affichage 
  def afficher_plateau
    @my_board.plateau
  end

  
#boucle vraiement pas folle qui affiche menu0 et menuX a tour de role
  def turn
    is_over = 0
    until is_over == 5
    puts "======== c'est le tour du jouer 1 ========"
    afficher_plateau
    menu0
    puts "======== c'est le tour du jouer 2 ========"
    afficher_plateau
    menuX
    is_over +=1
    end
    #la boucle s'arrete au bout de neuf tour
      if is_over == 5
        puts "=============================="
        puts "==| Le Morpion est Terminé |=="
        puts "=============================="

      end
  end

end