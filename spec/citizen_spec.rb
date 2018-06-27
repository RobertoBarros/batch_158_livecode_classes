require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it "should return true if age equal 18" do
      c = Citizen.new("","",18)
      expect(c.can_vote?).to eq(true)
    end

    it "should return false if age less than 18" do
      c = Citizen.new("","",17)
      expect(c.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it "should return the full name" do
      c = Citizen.new("nEyMAr","JuNIor",18)
      expect(c.full_name).to eq("Neymar Junior")
    end

  end

end