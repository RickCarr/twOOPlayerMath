Description:
Create a 2-(Player) math (game) where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

My current plan is to make classes Game, Questions, and Players as follows:
every class should have an initializer.
wait and call game.start to start method


Game
  Def initialize initializer
    puts "enter player 1 name:"
    @player1 = Players.new(gets.chomp)
    puts "enter player 2 name:"
    @player2 = Players.new(gets.chomp)
  winner = false
  while false
  ready = player1      
      announce '---New Turn---'
      puts "player #{Question}"
      guess = gets.chomp
      if guess.to_i >= 0
        guess_num = guess.to_i
      if guess_num != Question.answer
      player.lose_life
      Player.lives == 0 ? winner = true : 
        "#{Players[0].name}: #{Players[0].lives}/3 Vs. #{Players[0].name}: #{Players[0].lives}/3"
        ready = ready == player1 ? player2 : player1

  if winner == true
  Gameover
  end

  def Gameover  
    winner = Players[0].lives > Players[1].lives ? Players[0] : Players[1]
    winner.name Wins! with winner.lives of 3 lives remaining.
    exit(0)
  end
    
Question 
  attr_reader (:answer)      
    # asks question of sum two rng numbers (1..20).sample
    num1 = (1..20).sample
    num2 = (1..20).sample
  puts "What is does #{num1} plue #{num2} equal?"
  .answer for sum 
    num1 + num2

Player(name)
    attr_accessor (:name)
    attr_reader (:lives)
  name
    allows player names to be stored and referenced
  .lives
    starts with 3 can be written to update
  
  def lose_life
    self.lives -= 1
  end

