#Game is responsible for:
class Game

# Game actions:
# has players
# compares words

attr_accessor :on, :p1, :p2
  
  # make new players
  def initialize
    @p1 = Player.new
    @p1.word = Word.new("answer")
    @p2 = Player.new
    @p2.word = Word.new("guesser")
    @on = true
  end


   # valid letter input?
  def check_letter(guessed_letter)
    letter = guessed_letter.downcase
    !(@p2.letters.include?(letter)) && ("a".."z").include?(letter)
  end


   # word completely spelled?
  def word_spelled?
    @p2.word.name.join == @p1.word.name
  end

  # insert correctly-guessed letters
   def update_guessed_word(guessed_letter)
    decrement = true
    @p1.word.name.split("").each_with_index do |letter, index|
      if guessed_letter == letter
        @p2.word.name[index] = letter
        decrement = false
      end
    end
    decrement
  end

  





end