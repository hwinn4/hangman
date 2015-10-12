class Word
  
  attr_reader :guessed_word, :name

  WORDS = ["rabbit", "flatiron", "salty", "superfluous"]
  @@word = ""

  # instantiate Word object
  # of the approprite level of completion
  def initialize(role)
   
    @role = role
    if @role == "answer"
      @@word = answer
    else
      blank_word
    end
  end

  # choose a complete word
  def answer
    @name = WORDS.sample 
  end

  # make in-progress word
  def blank_word
   @name = Array.new(@@word.length,'_')
    
  end

  
end