# frozen_string_literal: true

RSpec.describe SimplerLexer do
  it "has a version number" do
    expect(SimplerLexer::VERSION).not_to be nil
  end

  it "returns the token for a plus [+]" do
    expect do
      SimplerLexer.new("+")
    end.to output("[PLUS]").to_stdout
  end

  it "returns the token for a minus [-]" do
    expect do
      SimplerLexer.new("-")
    end.to output("[MINUS]").to_stdout
  end

  it "returns the token for a multiply [*]" do
    expect do
      SimplerLexer.new("*")
    end.to output("[MUL]").to_stdout
  end

  it "returns the token for a divide [/]" do
    expect do
      SimplerLexer.new("/")
    end.to output("[DIV]").to_stdout
  end

  it "returns the token for a left parenthesis [(]" do
    expect do
      SimplerLexer.new("(")
    end.to output("[LPAREN]").to_stdout
  end

  it "returns the token for a right parenthesis [)]" do
    expect do
      SimplerLexer.new(")")
    end.to output("[RPAREN]").to_stdout
  end

  it "returns the token for an integer" do
    expect do
      SimplerLexer.new("1")
    end.to output("[{\"TT_INT\"=>1}]").to_stdout
  end

  it "returns the token for a float" do
    expect do
      SimplerLexer.new("3.14")
    end.to output("[{\"FLOAT\"=>3.14}]").to_stdout
  end

  it "returns the token for a tab" do
    expect do
      SimplerLexer.new(' \t')
    end.to output("[]").to_stdout
  end
end
