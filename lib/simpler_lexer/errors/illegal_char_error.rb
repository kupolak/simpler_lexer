# frozen_string_literal: true

# Error class for throwing IllegalCharError
class IllegalCharError < Error
  def initialize(pos_start, pos_end, details)
    super(pos_start, pos_end, "Illegal Character", details)
  end
end
