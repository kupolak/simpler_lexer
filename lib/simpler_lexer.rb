# frozen_string_literal: true

require_relative "simpler_lexer/version"
require_relative "simpler_lexer/constants"
require_relative "simpler_lexer/errors/error"
require_relative "simpler_lexer/errors/illegal_char_error"
require_relative "simpler_lexer/position"
require_relative "simpler_lexer/token"
require_relative "simpler_lexer/lexer"

class SimplerLexer
  def initialize(text)
    result = make_tokens(text)
    print_tokens(result)
  end

  private

  def make_tokens(text)
    lexer = Lexer.new(text)
    lexer.make_tokens
  end

  def print_tokens(result)
    if result.is_a?(Error)
      print(result.as_string)
    else
      print(result)
    end
  end
end
