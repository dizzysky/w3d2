require_relative "board.rb"
class Board
    def initialize(size = 4)
        @grid = Array.new(size) {Array.new(size)}
    end

    def populate
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



    def render
        @grid.each do |row|

            temp = []

            row.each do |card|
                if card.face 
                    temp << card.face_value 
                else
                    temp << ' '
                end
            end
            puts temp.join(' ')
        end
    end


    def won?

        @grid.all? do |row| 
    
            row.all? do |card| 
                card.face
            end
        end
    end


    def reveal(pos)
        row, col = pos

        if @grid[row][col].face
            return
        else
            @grid[row][col].face = true
            return @grid[row][col].face_value
        end
    end 
    
    def [](pos)
        row,col =pos
        @grid[row][col]
    end

    def []=(pos,val)
        row,col =pos
        @grid[row][col] = val
    end

end