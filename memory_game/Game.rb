require_relative "Board.rb"
require_relative "Card.rb"

class Game
    def initialize()
        @board = Board.new
        @board.populate
        @previous_guess = nil

        until (@board.won?) do
            @board.render
            puts "Enter a position of the card you'd like to flip ex: 1 2" 
            pos = gets.chomp.split(" ").map(&:to_i)
            make_guess(pos)
        end

            # while @previous_guess != nil

            #     @board.render
            #     puts "Enter a position of the card you'd like to flip ex: 1 2" 
            #     pos2 = gets.chomp.split(" ")

            #     if make_guess(pos) == make_guess(pos2)
            #          @board.render
            #          puts "It's a match!"
            #          @previous_guess = nil
            #     end
            #     puts "Try again"
            #     @previous_guess = nil 
            # end
    end

    def make_guess(position)
            # debugger
            if @previous_guess == nil
                @previous_guess = position
                # tempArr << position
                puts @previous_guess
                @board.reveal(@previous_guess)
                
            else
                if @board.value(@previous_guess) == @board.value(position)
                    @board.reveal(position)
                    @board.render
                    puts "Its a match"
                    @previous_guess = nil
                else
                    @board.reveal(position)
                    @board.render
                    puts "Try again"
                    @board.hide(position)
                    @board.hide(@previous_guess)
                    @previous_guess = nil
                end
            end
            # @previous_guess = @board.reveal(position) #holding our current object for the guess
            # return @board.reveal(position)
    end

end

g = Game.new