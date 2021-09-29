# frozen_string_literal: true

RSpec.describe IllegalCharError do
  before do
    @error = IllegalCharError.new(
      0,
      1,
      "Sample error"
    )
  end
  it "creates new IllegalCharError" do
    expect(@error).not_to be_nil
  end

  it "shows IllegalCharError as string" do
    as_string = @error.as_string
    expect(as_string).to eql "Illegal Character: Sample error\nFile 0, line 0"
  end
end
