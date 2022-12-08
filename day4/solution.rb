class Solution1
    def self.foo input
        countInRange = 0
       data = input.split()
        data.each { |row|
            ranges = row.split(',')

            range1 = ranges[0].split('-') 
            range2 = ranges[1].split('-') 

            if (range1[0].to_i >= range2[0].to_i and range1[1].to_i <= range2[1].to_i)
                countInRange = countInRange+1
            elsif (range2[0].to_i >= range1[0].to_i and range2[1].to_i <= range1[1].to_i)
                countInRange = countInRange+1 
            end
        }   
        p countInRange
        countInRange
    end
end

class Solution2
    def self.foo input
        countInRange = 0
       data = input.split()
        data.each { |row|
            ranges = row.split(',')

            range1 = ranges[0].split('-') 
            range2 = ranges[1].split('-') 

            if (range1[0].to_i <= range2[1].to_i and range1[1].to_i >= range2[0].to_i)
                countInRange = countInRange+1
            elsif (range2[1].to_i <= range1[1].to_i and range1[0].to_i <= range2[1].to_i)
                countInRange = countInRange+1 
            end
        }   
        p countInRange
        countInRange
    end
end