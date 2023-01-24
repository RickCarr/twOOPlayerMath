require './players'
require './questions'

class Game    
  def initialize()    
    puts "      Welcome to Math Match!!"
    puts "Each player has 3 lives per Match"
    puts ""
    print "Enter the first player's name: "
    @player1 = Player.new(gets.chomp)
    puts "----#{@player1.name} Enters the Math Match----"
    puts ""
    print "Enter the second player's name: "
    @player2 = Player.new(gets.chomp)
    puts "-----A New Challenger Appears-----"    
    puts ""
    puts "------------Math Match:-----------"
    puts "        #{@player1.name} Vs. #{@player2.name}!"    
    puts "--------------BEGIN!--------------"  
    puts ""  
    @current_player = @player1
  end
  
  def play
    while @player1.lives > 0 && @player2.lives >0
      question = Question.new     
      puts "#{@current_player.name}, #{question.text}"
      print "> "
      guess = gets.chomp.to_i
      if guess < 0
        puts "How about entering a number this time?"
        print "> "
        guess = gets.chomp.to_i
      end

      if guess != question.answer
        @current_player.lose_life
        puts "Wrong! you lose a life. #{@current_player.lives} remaining"
        puts ""
      else
        puts "Correct! Check out the big brain on #{@current_player.name}!"
        puts "     #{@current_player.lives} of 3 lives remaining"
        puts ""
      end
      if @current_player.lives == 0
        game_over
      else        
        @current_player = @current_player == @player1 ? @player2 : @player1
        puts  "   #{@player1.name}: #{@player1.lives}/3 Vs. #{@player2.name}: #{@player2.lives}/3"
        puts""
        puts "--------------Next Turn--------------"
      end   

      def game_over
        winner = @player1.lives > @player2.lives ? @player1 : @player2
        puts "-----------Congratulations-----------"

        puts "#{winner.name} Wins! with #{winner.lives} of 3 lives remaining!"
        puts "--------------Game Over--------------"
        exit(0)      
      end
    end
  end
end