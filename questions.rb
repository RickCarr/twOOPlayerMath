class Question  
  attr_reader :answer, :text
  
  def initialize()    
    num1 = (1..20).to_a.sample
    num2 = (1..20).to_a.sample    
    @answer = num1 + num2
    @text = "What does #{num1} plus #{num2} equal?"
  end
end

=begin  test info:

question = Question.new
puts question.answer

=end