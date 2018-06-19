def display_board(board)
  current_board = [" #{board[0]} | #{board[1]} | #{board[2]} ","-----------"," #{board[3]} | #{board[4]} | #{board[5]} ","-----------", " #{board[6]} | #{board[7]} | #{board[8]} "]
  puts current_board
end

def valid_move?(board, index)
  valid = nil
  # check to see if index is on the board
  if (index >= 0 && index <= 8)
    # check to see if space is already occupied
    if (position_taken?(board,index) == true)
      valid = false
    else
      valid = true
    end
  else 
    valid = false
  end
  valid
end

def position_taken?(board, index)
  taken = nil
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
   taken = false
  else
   taken = true
  end
  taken
end

def move(board, index, marker)
  board[index] = "#{marker}"
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)
  until valid_move?(board, index) == true do
    puts "Please enter 1-9:"
    user_input = gets
    index = input_to_index(user_input)
  end
  move(board, index, "X")
  display_board(board)
end