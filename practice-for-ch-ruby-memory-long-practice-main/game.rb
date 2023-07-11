require_relative "board.rb"
require_relative "card.rb"
require_relative "human_player.rb"

class Game
    def initialize(prev_guess = nil)
        @board = Board.new()
        @prev_guess = prev_guess
        @human_player = HumanPlayer.new()
        
    end

    def play
        @board.populate
        while !@board.won?
            system("clear")
            @board.render
            pos = @human_player.prompt
            make_guess(pos)
        end
    end



    def make_guess(guessed_pos)
        if !@prev_guess
            @board.reveal(guessed_pos)
            @prev_guess = guessed_pos
        else
            if @board.reveal(guessed_pos) != @board.reveal(@prev_guess)
                @board.render
                sleep(2)
                @board[guessed_pos].face = false
                @board[@prev_guess].face = false
            end
            @prev_guess = nil
        end
        @board.render
    end
    
end
