require_relative "board.rb"
class Board
    def initialize(size = 4)
        @grid = Array.new(size) {Array.new(size)}
    end

    def populate()
        alphabet ="abcdefghijklmnopqrstuvwxyz"
        alphabet = alphabet.split("")
        alphabet = alphabet.shuffle
        alphabet =alphabet[0...@grid.length**2/2]*2
        alphabet = alphabet.shuffle
        count =0
        while count< @grid.length**2
            row = rand(0...@grid.length)
            col = rand(0...@grid.length)

            if grid[row][col] == nil 
                grid[row][col] = Card.new(alphabet.pop)
                count +=1
        
            end
        end
    end
end