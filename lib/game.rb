#Game is responsible for:
class Game

attr_accessor :on
  
  # make new players
  def initialize
    @p1 = Player.new
    @p1.word = Word.new("answer")
    @p2 = Player.new
    @p2.word = Word.new("guesser")
    @on = true
  end


   # valid letter input?
  def check_letter
    letter = cli.letter.downcase
    !(@p2.letters.include?(letter)) && ("a".."z").include?(letter)
  end
end