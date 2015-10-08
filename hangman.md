Hangman!

Model View Controller

Model needs to generate word
... track game state

Viewer needs to put instructions to terminal
... and collect user's input

Controller takes user's input and calls on model to process user's input
... and calls on viewer to update terminal display

Class::Game
Methods 
- Generate random word
- Keep track of letters guessed
- Check if chosen letter is in the word
- Also check if chosen letter has already been played
- Keep track of turns remaining
- Check if letters comprise the word

Class::CLI
- Display game state in terminal
- Put instructions to terminal
- Retreive commands from user
- Pass user command to game model


for example{
	cli = CLI.new
	input = cli.gets_input
	game = GameModel.new
	game.update(input)
	CLI.update #responsible for updating terminal display
 ...
}



