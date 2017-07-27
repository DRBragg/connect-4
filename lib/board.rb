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
          if i < 0
            return placed
          end
      else
        @board[i][index] = piece
        placed = true
        return placed
      end
    end
  end

  def printNewBoard
    clear = "\r" + ("\e[2J")
    #\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e[A\e
    print clear
    printBoard
  end

  def winner?
    #4 in a row
    #check each position for player piece
    #if player piece is found increase count by 1
    #store index in new Array for each found piece in row
    #check next posistion
    #if next posistion is the same piece increase count again
    #eslif next posistion is NOT the same piece reset the count to 0
    #after row has been check move to next row
    #repeat check for each row
    #4 in a column
    #check each new index Array against the one above it
    #if match is found check next row
    #elsif no match is found in that row start checking the new row array
  end
end
