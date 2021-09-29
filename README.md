# SimplerLexer
Lexer created for learning purposes. A good start for writing your own programming language in Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simpler_lexer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install simpler_lexer

## Usage

Just type:
```ruby
SimplerLexer.new("(3+3)/(5-2.5)*12")
# => [LPAREN, {"TT_INT"=>3}, PLUS, {"TT_INT"=>3}, RPAREN, DIV, LPAREN, {"TT_INT"=>5}, MINUS, {"FLOAT"=>2.5}, RPAREN, MUL, {"TT_INT"=>12}]
```
