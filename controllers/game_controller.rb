# actions of the game controller:
# updates the word in progress (p2)
# compares p1 word and p2 word
# determines win/lose status
# set game on/off
class Game_controller
  
  attr_reader :game
  # attr_accessor :on, :cli, :turns
  
  def initialize
    @game = Game.new
  end

  def play_again
    view = Play_again.new
    data = view.render
    if data == "y"
      @game = Game.new
    end
  end

  def update_game(guessed_letter)
    # if the letter is valid...
    if @game.check_letter(guessed_letter)
      decrement = @game.update_guessed_word(guessed_letter)
      @game.p2.letters << guessed_letter


      # is the game solved?
      if @game.word_spelled?
        view = Won_game.new
        view.render(@game.p2.word.name)
        sleep(2)
        @game.on = false
        play_again
      end

      # decrement turns
      if decrement
        @game.p2.turns -= 1
      end

      # is the game lost?
      if @game.p2.out_of_turns?
        view = Lose_game.new
        view.render
        sleep(2)
        @game.on = false
        play_again
      end
   

      # resume regular game play
      if @game.on
        view = Game_display.new
        view.render(@game.p2.word.name, @game.p2.turns)
      end
    # invalid input error message
    else
      view = Alert_error.new
      view.render
      sleep(2)
    end
  end



end

    