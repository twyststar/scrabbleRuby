require("rspec")
require("scrabble")

describe('String#scrabble')do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a letter") do
      expect("q".scrabble()).to(eq(10))
  end
  it("returns a scrabble score for two letters") do
      expect("qa".scrabble()).to(eq(11))
  end
  it("returns a scrabble score for any letters") do
      expect("qqqqqq".scrabble()).to(eq(60))
  end
end
