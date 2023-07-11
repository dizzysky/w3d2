class HumanPlayer

    def prompt
        p 'enter position in row col'
        pos = gets.chomp.split(' ')
        pos[0] =pos[0].to_i
        pos[1] =pos[1].to_i
        return pos
    end

end