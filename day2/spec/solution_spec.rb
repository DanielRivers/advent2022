require "spec_helper"
require_relative "../solution"


data = 'A Y
B X
C Z'

RSpec.describe "Solution" do
    it "works" do
        expect(Solution1.foo data).to eq(15)
    end

    it "works" do
        expect(Solution2.foo data).to eq(12)
    end
end

