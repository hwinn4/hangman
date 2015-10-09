attr_accessor :on, :cli, :turns

# actions of the game controller:

# updates the word in progress (p2)
# compares p1 word and p2 word
# determines win/lose status
# set game on/off


def update_game
    if check_letter
      decrement = p2.word.update_guessed_word
      p2.guessed_letters << cli.letter

      # MOVE TO GAME?
      if word_spelled?
        @cli.end_game("won")
        self.on = false
      end

      if !(decrement)
        self.turns -= 1
      end
      if out_of_turns?
        @cli.end_game("lost")
        self.on = false
      end
    else
      cli.alert_user
    end
  end

    def initialize
    @on = true
    # @turns = 6
    # @guessed_letters = []
    # @guessed_word = Array.new(generate_word.length,'_')
  end