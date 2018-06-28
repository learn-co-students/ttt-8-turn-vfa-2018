def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "] )
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    TRUE
  else
    false
  end
end


def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == NIL
    false
  else 
    TRUE
  end  

end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(index)
  index = index.to_i
  if index == 0
    -1
  else
    index - 1
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_index = gets
  user_index = input_to_index(user_index)
  if valid_move?(board, user_index)
    move(board, user_index)
    display_board(board)
  else
    turn(board)
  end
end