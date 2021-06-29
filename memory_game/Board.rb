require_relative "Card.rb"

class Board
    @@size = 4
    @@num_pairs = 0
    @@values = ["a","b","c","d","e","f","g","h"]

    def initialize
        @grid = Array.new(@@size) {Array.new(@@size)}

    end

    def populate
        total_letters_pairs = @@size ** 2
        
        total_letters_pairs = 8
        hash = Hash.new(0)
        # while @@num_pairs < total_letters_pairs

        @grid.each_with_index do |row, x|
            row.each_with_index do |value, y|
                sampled = true
                while sampled
                    letter = @@values.sample
                    if hash[letter] < 2 
                        hash[letter] += 1
                        @grid[x][y] = Card.new(letter)
                        sampled = false
                    end 
                end
            end
        end
        

        #find values
        
        # 2.times do |i| 
            # # randRow = rand(0...@@size)
            # # randCol = rand(0...@@size)
            # @grid[randRow][randCol] = value
      # end
   end

   def render
       print "  0 1 2 3\n"
       @grid.each_with_index do |row, x|
            newString = x.to_s + " "
            row.each_with_index do |value, y|
                if !@grid[x][y].face_down
                    newString += @grid[x][y].to_s + " "
                end
            end
            print newString + "\n"
       end
   end

   def won?
       @grid.each_with_index do |row, x|
            row.each_with_index do |value, y|
                if @grid[x][y].face_down
                    return false
                end
            end
       end
       return true
    end

    def reveal(guessed_pos)
        if @grid[guessed_pos[0]][guessed_pos[1]].face_down
            @grid[guessed_pos[0]][guessed_pos[1]].reveal
            return @grid[guessed_pos[0]][guessed_pos[1]].to_s
        end
    end


end

b = Board.new
p b