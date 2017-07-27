require_relative "board"

board = Board.new
board.printBoard

def player1Move(board)
  player1 = "◻︎"
  puts "Player 1 select a column for your piece"
  column = gets.chomp
  board.addPiece(column.to_i, player1)
  board.printNewBoard
  player2Move(board)
end

def player2Move(board)
  player2 = "◼︎"
  puts "Player 2 select a column for your piece"
  column = gets.chomp
  board.addPiece(column.to_i, player2)
  board.printNewBoard
  player1Move(board)
end

player1Move(board)
