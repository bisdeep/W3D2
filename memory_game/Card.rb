class Card

#face value
#hide
#reveal
#to s
#==

    def initialize(value)
        @face_down = true #checks if its up or down
        @face_value = value #value of the card
    end

    def hide
        if !(@face_down)
            @face_down = true
        end
    end

    def reveal
        if @face_down
            @face_down = false
        end
    end

    def to_s
        #if its revealed, turn the value ito a string
        
        @face_value.to_s
    end

    def ==(value)
        @face_value.to_s == value.to_s
    end


    

end