require "spec_helper"
require "demo_calcy"

RSpec.describe DemoCalcy do
  describe "#add" do
    it "is valid" do
      expect(described_class.add(1, 3)).to eq(4)
      expect(described_class.add(1, 1)).to eq(2)
    end

    it "is invalid" do
      expect(described_class.add(1, 3)).not_to eq(2)
      expect(described_class.add(1, 1)).not_to eq(0)
    end
  end

  describe "#subtract" do
    it "is valid" do
      expect(described_class.subtract(1, 3)).to eq(-2)
      expect(described_class.subtract(1, 1)).to eq(0)
    end

    it "is invalid" do
      expect(described_class.subtract(1, 3)).not_to eq(2)
      expect(described_class.subtract(1, 1)).not_to eq(-1)
    end
  end

  describe "#multiply" do
    it "is valid" do
      expect(described_class.multiply(1, 3)).to eq(3)
      expect(described_class.multiply(1, 1)).to eq(1)
    end

    it "is invalid" do
      expect(described_class.multiply(1, 3)).not_to eq(1)
      expect(described_class.multiply(1, 1)).not_to eq(0)
    end
  end

  describe "#divide" do
    it "is valid" do
      expect(described_class.divide(1, 3)).to eq(0)
      expect(described_class.divide(3, 1)).to eq(3)
      expect(described_class.divide(3, 0)).not_to eq("You can not divide by 0")
    end

    it "is invalid" do
      expect(described_class.divide(1, 3)).not_to eq(1)
      expect(described_class.divide(3, 1)).not_to eq(1)
    end
  end
end
