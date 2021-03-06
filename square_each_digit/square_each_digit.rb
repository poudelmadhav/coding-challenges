def square_each_digit num
  if num.is_a? Numeric
    num.to_s.split("").map { |n| n.to_i.abs2.to_s}.join.to_i
  else
    'NaN'
  end
end

describe "#square_each_digit" do
  context "it is a number" do
    it "returns square of each digit" do
      expect(square_each_digit(3211)).to eq(9411)
      expect(square_each_digit(654326)).to eq(3625169436)
      expect(square_each_digit(1111)).to eq(1111)
    end
  end

  context "it is not a number" do
    it "returns NaN" do
      expect(square_each_digit("hello")).to eq("NaN")
      expect(square_each_digit("12hello")).to eq("NaN")
    end
  end
end
