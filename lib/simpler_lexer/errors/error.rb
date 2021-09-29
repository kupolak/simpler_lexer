# frozen_string_literal: true

# Base class for throwing errors.
class Error
  def initialize(pos_start, pos_end, error_name, details)
    @pos_start = pos_start
    @pos_end = pos_end
    @error_name = error_name
    @details = details
  end

  def as_string
    result = "#{@error_name}: #{@details}\n"
    result += "File #{@pos_start}, line #{@pos_start}"
    result
  end
end
