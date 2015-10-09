class Game

	attr_accessor :on, :cli, :turns
	attr_reader :guessed_word

	# WORDS = ["rabbit", "flatiron", "salty"]

	def initialize
		@on = true
		# @turns = 6
		# @guessed_letters = []
		# @guessed_word = Array.new(generate_word.length,'_')
	end

	# def generate_word
	# 	@word = WORDS.sample
	# end

	def update_game
		if check_letter
			in_word = update_guessed_word
			@guessed_letters << cli.letter
			if word_spelled?
				@cli.end_game("won")
				self.on = false
			end

			if !(in_word)
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

	# def update_guessed_word
	# 	in_word = false
	# 	@word.split("").each_with_index do |letter, index|
	# 		if cli.letter == letter
	# 			@guessed_word[index] = letter
	# 			in_word = true
	# 		end
	# 	end
	# 	in_word
	# end

	# def check_letter
	# 	#is this letter valid?
	# 	letter = cli.letter.downcase
	# 	!(@guessed_letters.include?(letter)) && ("a".."z").include?(letter)
	# end

	# def word_spelled?
	# 	@guessed_word.join == @word
	# end

	# def out_of_turns?
	# 	self.turns < 1
	# end

end