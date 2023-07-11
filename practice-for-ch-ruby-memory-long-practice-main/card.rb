


class Card 

    attr_reader :face_value, :face
    attr_writer :face

    def initialize(face_value, face = false)

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
        if @face 
            @face_value.to_s 
        else
            ""
        end
    end

    # def ==(card)

    #     @face_value == card.face_value && @face == card.face

    # end







end