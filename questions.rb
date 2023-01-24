class Question  
  attr_reader :answer  
  
  def initialize()    
    num1 = (1..20).to_a.sample
    num2 = (1..20).to_a.sample
    puts num1
    @answer = num1 + num2
    puts "What does #{num1} plus #{num2} equal?"
  end
end

=begin  test info:

question = Question.new
puts question.answer

=end