def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index_number = user_input.to_i
  index_number -= 1
  return index_number
end

def position_taken?(board, index_number)
  if board[index_number] == " "
    false
  elsif board[index_number] == ""
    false
  elsif board[index_number] == nil
    false
  elsif board[index_number] == "X" || "O"
    true
  end
end

def valid_move?(board, index_number)
  if index_number.between?(0,8) && !position_taken?(board, index_number)
    return true
  else
    return false
  end
end

def move(board,index_number, 'X')
  board[index_number] = character
  return board
end
end
