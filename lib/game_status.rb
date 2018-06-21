# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

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
  WIN_COMBINATIONS.any? |element|
    windex_1 = element[0]
    windex_2 = element[1]
    windex_3 = element[2]
  
    position_1 = board[windex_1]
    position_2 = board[windex_2]
    position_3 = board[windex_3]
  
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return [windex_1,windex_2,windex_3]
    else 
      false 
    end 
  end
end
  
  
  
