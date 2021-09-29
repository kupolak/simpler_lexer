# frozen_string_literal: true

RSpec.describe Error do
  before do
    @error = Error.new(
      0,
      1,
      "Sample error",
      "Details of error"
    )
  end
  it "creates new Error" do
    expect(@error).not_to be_nil
  end

  it "shows Error as string" do
    as_string = @error.as_string
    expect(as_string).to eql "Sample error: Details of error\nFile 0, line 0"
  end
end
