require 'pry'
class Board
  attr_accessor :board
  def initialize
    @board = boardRender
  end

  def boardRender
    board = Array.new(6) { Array.new(7, "-") }
  end

  def printBoard
    i = 0
    while i < 6 do
      puts " |#{@board[i].join(" ")}|"
      i +=1
    end
    puts " ---------------"
    puts "  0 1 2 3 4 5 6"
  end

  def addPiece(index, piece)
    i = 5
    placed = false
    while placed != true && i >= 0
      if ["◻︎", "◼︎"].include?(@board[i][index])
        i -= 1
      else
        @board[i][index] = piece
        placed = true
      end
    end
  end

  def printNewBoard
    clear = "\r" + ("\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[J")
    print clear
    printBoard
  end
end

# board = Board.new
# board.printBoard
# #binding.pry
# board.addPiece(1, "◼︎")
# board.printNewBoard
# board.addPiece(4, "◻︎")
# board.printNewBoard
# board.addPiece(1, "◼︎")
# board.printNewBoard
# board.addPiece(5, "◻︎")
# board.printNewBoard
