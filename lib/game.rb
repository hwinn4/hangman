class Game

	attr_accessor :on, :cli
	attr_reader :guessed_word, :turns

	def initialize
		generate_word
		@on = true
		@turns = 6
		@guessed_letters = []
		@guessed_word = Array.new(generate_word.length,'_')
	end

	def generate_word
		@word = "ducks"
		# @word.split
	end

	def update_game
		if check_letter
			update_guessed_word
			@guessed_letters << cli.letter
			@turns -= 1
			# how do we update the guessed word?
		else
			cli.alert_user
		end
	end

	def update_guessed_word
		@word.split("").each_with_index do |letter, index|
			if cli.letter == letter
				@guessed_word[index] = letter
			end
		end
	end

	def check_letter
		#is this letter valid?
		letter = cli.letter.downcase
		!(@guessed_letters.include?(letter)) && ("a".."z").include?(letter)
	end

	def word_spelled?
		@guessed_word == @word
	end

	def out_of_turns?
		turns < 1 && !(win?)
	end

end