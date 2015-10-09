class Game_display
  def render(word, turns)
      print "\n \n #{word.join(' ')}"
      puts "\n \n #{turns} turns left."
  end
end