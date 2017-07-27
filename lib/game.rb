require_relative "board"

board = Board.new
board.printBoard

def player1Move(board)
  player1 = "◻︎"
  puts "Player 1 select a column for your piece"
  column = gets.chomp
  if column.to_i >= 0 && column.to_i <=6
    move = board.addPiece(column.to_i, player1)
    if move?
    board.printNewBoard
    #board.winner?(player1)
    player2Move(board)
  else
    board.printNewBoard
    puts "Not a valid move, please try again"
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
    puts "Not a valid move, please try again"
    player2Move(board)
  end
end

print "Player 1, please enter your name: "
p1 = gets.chomp
print "Player 2, please enter your name: "
p2 = gets.chomp
if p1 === p2
  print "Player 2, please enter a unique name: "
  p2 = gets.chomp
end

player1Move(board)
