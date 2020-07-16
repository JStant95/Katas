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

  # it "Returns 11th unique digit" do
  #   expect(next_unique_digit(11)).to eq(22)
  # end
end

describe "includes_digit" do
  it "Returns true current number does not contain any digits from last number" do
    expect(includes_digit("5", "5")).to eq(true)
  end

  it "Returns false for non matching digits" do
    expect(includes_digit("5", "6")).to eq(false)
  end

  it "Can deal with a number with more than 1 digit" do
    expect(includes_digit("26", "6")).to eq(true)
  end

  it "Can deal with two numbers with more than 1 digit" do
    expect(includes_digit("26", "16")).to eq(true)
  end
end
