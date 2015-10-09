
class Cli

	attr_accessor :game
	attr_reader :letter

	def start
		@game = Game.new
		@game.cli = self
		greet_user
		instructions
	end

	def greet_user
		puts "Hello USER!?"
	end

	def instructions
		puts "The computer will choose a word."
		puts "Guess the word by guessing one letter at a time."
		puts "If you guess incorrectly 6 times, you will hang!"
	end

	def get_user_input
		#@letter = "a"
		puts "\n Enter a letter."
		@letter = gets.chomp
		game.update_game
	end


	def display
		print "\n \n #{game.guessed_word.join(' ')}"
		if @game.on
			puts "\n \n #{game.turns} turns left."
		end
	end

	def alert_user
		puts "Not valid! Try again."
	end

	# def play_again
	# 	puts "Do you want to play again? y/n"
	# 	choice = gets.chomp
	# 	if choice == "y"
	# 		start
	# 	end
	# end

	def end_game(status)
		if status == "won"
			puts "\n \n You survived!"
		else
			puts "\n \n Whomp whomp! You lose!"
		end
	end

	def exit
		@game.on = false
	end

end