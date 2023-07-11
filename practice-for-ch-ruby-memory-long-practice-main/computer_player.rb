class ComputerPlayer
    def initialize
        @guessed = Array.new()
        @known_cards = {}
        @matched_cards = {}
        @prev_guess = nil
    end

    def receive_revealed_card(pos,face_value)
        if @known_cards.values.include?(face_value)
            @matched_cards[face_value] =[pos,@known_cards.key(face_value)]
        end
        @known_cards[pos] = face_value
    end

    def play()
        if !prev_guess

        else 
    
        end
    end

    def first_guess()
        if @matched_cards
            
    end



end