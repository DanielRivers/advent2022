require "spec_helper"
require_relative "../solution"


data = '1000
2000
3000

4000

5000
6000

7000
8000
9000

10000'

RSpec.describe "Solution" do
    it "works" do
        expect(Solution1.foo data).to eq(24000)
    end

    it "works" do
        expect(Solution2.foo data).to eq(45000)
    end
end

