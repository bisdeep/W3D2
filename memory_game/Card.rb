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

    def face_down
        @face_down
    end

    def hide
         @face_down = true
    end

    def reveal
        @face_down = false
    end

    def to_s
        #if its revealed, turn the value ito a string
        @face_value.to_s
    end

    def ==(value)
        @face_value.to_s == value.to_s
    end


    

end