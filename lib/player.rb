class Player

attr_accessor :word

  def initialize
    @turns = 6
    @guessed_letters = []
  end

  def out_of_turns?
    self.turns < 1
  end

end