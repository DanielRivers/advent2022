require "spec_helper"
require_relative "../solution"


data = 'vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw'

RSpec.describe "Solution" do
    it "works" do
        expect(Solution1.foo data).to eq(157)
    end

    it "works" do
        expect(Solution2.foo data).to eq(70)
    end
end

