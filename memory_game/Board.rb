class Board
    @@size = 4
    @@num_pairs = 0
    @@values = ["a","b","c","d","e","f","g","h"]

    def initialize
        @grid = Array.new(@@size) {Array.new(@@size)}

    end

    def populate(position)
        total_letters_pairs = @@size ** 2
        
        total_letters_pairs = 8
        while @@num_pairs < total_letters_pairs

            @grid.each do |row|
                row.each do |value|
                    
                    
                end
            end

        #find values
        
        # 2.times do |i| 
            # # randRow = rand(0...@@size)
            # # randCol = rand(0...@@size)
            @grid[randRow][randCol] = value
        # end

        end



    end

    def render

    end



end

b = Board.new
p b