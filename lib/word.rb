class Word
  
  attr_reader :guessed_word, :name

  WORDS = ["rabbit", "flatiron", "salty"]

  # instantiate Word object
  # of the approprite level of completion
  def initialize(role)
   
    @role = role
    if @role == "answer"
      answer
    else
      blank_word
    end
  end

  # choose a complete word
  def answer
    #@word
    @name = WORDS.sample 
  end

  # make in-progress word
  def blank_word
    #@guessed_word
    @name = Array.new(answer.length,'_')
    
  end

  # insert correctly-guessed letters
  def update_guessed_word
    decrement = true
    @word.split("").each_with_index do |letter, index|
      if cli.letter == letter
        @guessed_word[index] = letter
        decrement = false
      end
    end
    decrement
  end

  # word completely spelled?
  def word_spelled?
    @guessed_word.join == @word
  end

end