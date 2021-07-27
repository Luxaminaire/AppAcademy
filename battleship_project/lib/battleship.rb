require_relative "board"
require_relative "player"

class Battleship
    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = n * n * 0.5
    end

    def start_game
        @board.place_random_ships
        puts @board.num_ships
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            puts "you lose"
            return true
        end
        false
    end

    def win?
        @board.num_ships
        if @board.num_ships == 0
            puts "you win"
            return true
        end
        false
    end

    def game_over?
        win? || lose?
    end

    def turn
        move = @player.get_move
        hit = board.attack(move)
        @board.print
        if !hit
            @remaining_misses -= 1
        end
        puts @remaining_misses
    end
end

