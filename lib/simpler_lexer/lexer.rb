# frozen_string_literal: true

class Lexer
  def initialize(text)
    @text = text
    @pos = Position.new(-1, 0, -1, text)
    @current_char = nil
    advance
  end

  def advance
    @pos.advance(@current_char)
    @current_char = (@text[@pos.idx] if @pos.idx < @text.length)
  end

  def make_tokens
    tokens = []

    until @current_char.nil?
      if ' \t'.include? @current_char
        advance
      elsif DIGITS.include? @current_char
        tokens.append(make_number)
      elsif @current_char == "+"
        tokens.append(Token.new(TT_PLUS))
        advance
      elsif @current_char == "-"
        tokens.append(Token.new(TT_MINUS))
        advance
      elsif @current_char == "*"
        tokens.append(Token.new(TT_MUL))
        advance
      elsif @current_char == "/"
        tokens.append(Token.new(TT_DIV))
        advance
      elsif @current_char == "("
        tokens.append(Token.new(TT_LPAREN))
        advance
      elsif @current_char == ")"
        tokens.append(Token.new(TT_RPAREN))
        advance
      else
        pos_start = @pos.copy
        char = @current_char
        advance
        return IllegalCharError.new(pos_start, @pos, "'#{char}'")
      end
    end

    tokens
  end

  def make_number
    num_str = ""
    dot_count = 0

    while !@current_char.nil? && ("#{DIGITS}.").include?(@current_char)
      if @current_char == "."
        break if dot_count == 1

        dot_count += 1
        num_str += "."
      else
        num_str += @current_char
      end
      advance
    end

    if dot_count.zero?
      Token.new(TT_INT, num_str.to_i)
    else
      Token.new(TT_FLOAT, num_str.to_f)
    end
  end
end
