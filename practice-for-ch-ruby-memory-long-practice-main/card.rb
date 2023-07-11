


class Card 

    def initialize(face_value, face)

        @face_value = face_value

        @face = face 

    end


    def hide 
        @face = false 
    end

    def reveal 
        @face = true 
    end

    def to_s
        if face 
            @face_value.to_s 
        else
            raise 'card is not face up'
        end
    end

    def ==(card)

        @face_value == card.face_value && @face == card.face

    end







end