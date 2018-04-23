# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
def won?(board) 
  WIN_COMBINATIONS.each do |win_combination|
    result = ""
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X" 
        "X won in the top row"
        result = win_combination
      elsif board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
        "O won in the top row"
        result = win_combination
      else 
        result = false
      end
      result
  end
end