require 'colorize'
require_relative 'cursor'
require_relative "board"

class Display
  attr_accessor :board, :cursor

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    cursor_pos = @cursor.cursor_pos
    x, y = cursor_pos
    @board[x][y] = @cursor
    print "Priya's Chess Game!"
    @board.each do |row|
      row.each do | sqr |
        print "|o|".colorize(:background => :magenta) if sqr.class == Cursor
        print "|*|" if sqr.class == Piece
        print "|_|" if sqr.class NullPiece
      end
      print "\n"
    end
  end

end

# b = Board.new
# d = Display.new(b)
# d.render
