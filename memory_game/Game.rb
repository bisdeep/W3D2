require_relative "Board.rb"
require_relative "Card.rb"
class Game

    def initialize()
        @board = Board.new
        @board.populate
        @previous_guess

        until (@board.won?) do


            @board.render
            puts "Enter a position of the card you'd like to flip ex: 1 2" 
            pos = gets.chomp.split(" ")
            make_guess(pos)


            while @previous_guess != nil

                @board.render
                puts "Enter a position of the card you'd like to flip ex: 1 2" 
                pos2 = gets.chomp.split(" ")

                if make_guess(pos) == make_guess(pos2)
                     @board.render
                     puts "It's a match!"
                     @previous_guess = nil
                end
                puts "Try again"
                @previous_guess = nil
                    
            end

            


        end



    end

    def make_guess(position)
            @previous_guess = @board.reveal(position) #holding our current object for the guess
            return @board.reveal(position)
    end

end