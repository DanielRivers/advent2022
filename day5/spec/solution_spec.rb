require "spec_helper"
require_relative "../solution"


data = '    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

 move 1 from 2 to 1
 move 3 from 1 to 3
 move 2 from 2 to 1
 move 1 from 1 to 2'

RSpec.describe "Solution" do
    it "works" do
        expect(Solution1.foo data,true).to eq('CMZ')
    end

    it "works" do
        expect(Solution1.foo data,false).to eq('MCD')
    end
end