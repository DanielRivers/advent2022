require "spec_helper"
require_relative "../solution"


data = '2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8'

RSpec.describe "Solution" do
    it "works" do
        expect(Solution1.foo data).to eq(2)
    end

    it "works" do
        expect(Solution2.foo data).to eq(4)
    end
end

