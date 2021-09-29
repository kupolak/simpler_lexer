# frozen_string_literal: true

class Token
  attr_reader :type, :value

  def initialize(type, value = nil)
    @type = type
    @value = value
  end

  def inspect
    @value ? { @type => @value } : @type.to_s
  end
end
