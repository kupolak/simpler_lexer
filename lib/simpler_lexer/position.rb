# frozen_string_literal: true

class Position
  attr_reader :idx, :ln, :col, :ftxt

  def initialize(idx, ln, col, ftxt)
    @idx = idx
    @ln = ln
    @col = col
    @ftxt = ftxt
  end

  def advance(current_char)
    @idx += 1
    @col += 1
    if current_char == '\n'
      @ln += 1
      @col = 0
    end
    self
  end

  def copy
    Position.new(@idx, @ln, @col, @ftxt)
  end
end
