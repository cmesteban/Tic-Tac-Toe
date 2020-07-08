class Board
  def initialize
    @board = [
      " | | ",
      "-----",
      " | | ",
      "-----",
      " | | "
    ]
  end
  
  def update(location, marker)
    row = 0
    column = 0

    case location
    when 1..3
      row = 0
    when 4..6
      row = 2
    when 7..9
      row = 4
    end

    case location
    when 1,4,7
      column = 0
    when 2,5,8
      column = 2
    when 3,6,9
      column = 4
    end

    @board[row][column] = marker
    puts @board
  end

  def show
    puts @board
  end
end


