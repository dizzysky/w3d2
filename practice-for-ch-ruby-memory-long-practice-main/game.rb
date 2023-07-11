require_relative "board.rb"
require_relative "card.rb"

class Game
    def initialize(prev_guess = nil)
        @board = Board.new()
        @prev_guess = prev_guess
        
    end

    def play
        @board.populate
        while !@board.won?
            system("clear")
            @board.render
            p 'enter position in row col'
            pos = gets.chomp.split(' ')
            pos[0] =pos[0].to_i
            pos[1] =pos[1].to_i
            make_guess(pos)
        end
    end

    # def make_guess(guessed_pos)
    #     if !@prev_guess
    #         @board.reveal(guessed_pos)
    #         @prev_guess = guessed_pos
    #     else
    #         if @board.reveal(guessed_pos) != @board.reveal(@prev_guess)
    #             @board.render
    #             sleep(2)
    #             @board[guessed_pos].face= false
    #             @board[@prev_guess].face = false
    #             @prev_guess = nil
    #         else 
    #             # @board[guessed_pos].face = true
    #             # @board[@prev_guess].face = true
    #             # @board.render
    #             # sleep(2)
    #             # @prev_guess = nil
    #         end
    #     end
    # end



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
