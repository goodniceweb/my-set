require_relative './my_set'

RSpec.describe MySet do
  let(:my_set) { MySet.new }

  describe "#empty?" do
    context "when nothing was added" do
      it "return true" do
        expect(my_set.empty?).to eq(true)
      end
    end

    context "when something was added" do
      before do
        my_set.add(1)
      end

      it "return false" do
        expect(my_set.empty?).to eq(false)
      end
    end
  end

  describe "#contains?" do
    context "when there is no such value" do
      it "return false" do
        expect(my_set.contains?(1)).to eq(false)
      end
    end

    context "when there is exactly the same value" do
      before do
        my_set.add(1)
      end

      it "return true" do
        expect(my_set.contains?(1)).to eq(true)
      end
    end
  end

  describe "length" do
    it "return set size" do
      expect(my_set.length).to eq(0)
      my_set.add(1)
      my_set.add(2)
      expect(my_set.length).to eq(2)
      my_set.add(1)
      my_set.add(2)
      expect(my_set.length).to eq(2)
    end
  end

  describe "remove" do
    let(:value) { 1 }

    it "removes a value from a set" do
      expect(my_set.contains?(value)).to eq(false)
      my_set.add(value)
      expect(my_set.contains?(value)).to eq(true)
      expect(my_set.remove(value)).to eq(1)
      expect(my_set.contains?(value)).to eq(false)
    end
  end

  describe "to_a" do
    before do
      my_set.add(1)
      my_set.add(2)
      my_set.add(3)
      my_set.add(3)
    end

    it "returns array" do
      expect(my_set.to_a).to match_array([1,2,3])
    end
  end
end
