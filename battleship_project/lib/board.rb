class Board
    attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n, :N)}
        @size = n * n 
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def num_ships
        @grid.flatten.count {|ele| ele == :S}
    end

    def attack(pos)
        if self[pos] == :S
            self[pos] = :H
            puts "you sunk my battleship!"
            return true
        else
            self[pos] = :X
        end
        false
    end

    def place_random_ships
        total_ships = @size * 0.25
        

        while self.num_ships < total_ships
            rRow = rand(0...@grid.length)
            rCol = rand(0...@grid.length)
            pos = [rRow, rCol]
            self[pos] = :S
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S
                    :N
                else
                    ele
                end
            end
        end
    end

    def self.print_grid(arr)
        arr.each do |row|
            puts row.join(" ")
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(hidden_ships_grid)
    end

end
