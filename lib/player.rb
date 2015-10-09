class Player

attr_accessor :word, :turns, :letters

  def initialize
    @turns = 6
    @letters = []
  end

  def out_of_turns?
    self.turns < 1
  end

end