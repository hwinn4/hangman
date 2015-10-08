
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
	end

	def get_user_input
		#@letter = "a"
		puts "\n Enter a letter. You can be wrong 6 times OR YOU WILL HANG."
		@letter = gets.chomp
	end


	def display
		game.update_game
		#binding.pry
		print game.guessed_word.join(' ')
		puts "\n \n #{game.turns} turns left."
	end

	def alert_user
		# tells the user if input invalid
	end

	def help
	end

	def new_game
	end

	def end_game
	end

	def exit
		@game.on = false
	end

end