class Player  
  attr_accessor :name
  attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 3  
  end

  def lose_life
    @lives -= 1
  end
end

=begin  test info:

player = Player.new("Ryu")
puts player.name
puts player.lives
player.lose_life
puts player.lives

=end