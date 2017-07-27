require_relative "board"

board = Board.new
board.printBoard

def player1Move(board)
  player1 = "◻︎"
  puts "Player 1 select a column for your piece"
  column = gets.chomp
  if column.to_i >= 0 && column.to_i <=6
    board.addPiece(column.to_i, player1)
    board.printNewBoard
    #board.winner?(player1)
    player2Move(board)
  else
    board.printNewBoard
    player1Move(board)
  end
end

def player2Move(board)
  player2 = "◼︎"
  puts "Player 2 select a column for your piece"
  column = gets.chomp
  if column.to_i >= 0 && column.to_i <=6
    board.addPiece(column.to_i, player2)
    board.printNewBoard
    #board.winner?(player2)
    player1Move(board)
  else
    board.printNewBoard
    player2Move(board)
  end
end

player1Move(board)
