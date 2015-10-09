# views
require_relative '../views/game/alert_error.rb'
require_relative '../views/game/game_display.rb'
require_relative '../views/game/game_greeting.rb'
require_relative '../views/game/lose_game.rb'
require_relative '../views/game/play_again.rb'
require_relative '../views/game/user_input.rb'
require_relative '../views/game/won_game.rb'

# models
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/word.rb'

# controllers
require_relative '../controllers/game_controller.rb'

require 'pry'