require_relative "board"

module SlidingPiece
  def moves
  end
end

module SteppingPiece
end

class Piece

  def initialize
  end

  def moves
  end
end

class Bishop < Piece
  include SlidingPiece

  def initialize(start_pos)
  end

  def move_dirs
    [:diagonal]
  end
end

class Rook < Piece
  include SlidingPiece

  def initialize(start_pos)
  end

  def move_dirs
    [:foward, :backward, :left, :right]
  end
end

class Queen < Piece
  include SlidingPiece

  def initialize(start_pos)
  end

  def move_dirs
    [:forward, :backward, :left, :right, :diagonal]
  end

  class Knight < Piece
    include SteppingPiece

    def initialize(start_pos)
    end

  end

  class King < Piece
    include SteppingPiece

    def initialize(start_pos)
    end

  end

end
