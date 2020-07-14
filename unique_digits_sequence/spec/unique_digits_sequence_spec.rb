require "unique_digits_sequence"

describe "next_unique_digit" do
  it "Returns first unique digit" do
    expect(next_unique_digit(1)).to eq(1)
  end

  it "Returns second unique digit" do
    expect(next_unique_digit(2)).to eq(2)
  end

  it "Returns second unique digit" do
    expect(next_unique_digit(5)).to eq(5)
  end

  it "Returns second unique digit" do
    expect(next_unique_digit(10)).to eq(10)
  end
end
