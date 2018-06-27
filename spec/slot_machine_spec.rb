require_relative '../slot_machine'

describe SlotMachine do
  describe "#score" do
    it "return the correct score if 3 reels equals" do
      sm = SlotMachine.new
      expect(sm.score([:joker, :joker, :joker])).to eq(50)
      expect(sm.score([:bell, :bell, :bell])).to eq(30)
      expect(sm.score([:cherry, :cherry, :cherry])).to eq(10)
    end

    it "return the correct score if 2 reels equals plus joker" do
      sm = SlotMachine.new
      expect(sm.score([:bell, :bell, :joker])).to eq(15)
      expect(sm.score([:joker, :seven, :seven])).to eq(10)
    end

    it "return the correct score if 2 joker plus any other" do
      sm = SlotMachine.new
      expect(sm.score([:joker, :joker, :cherry])).to eq(25)
      expect(sm.score([:joker, :joker, :seven])).to eq(25)
    end

    it "return the correct score if 3 reels different" do
      sm = SlotMachine.new
      expect(sm.score([:joker, :star, :cherry])).to eq(0)
      expect(sm.score([:cherry, :star, :cherry])).to eq(0)
    end
  end
end