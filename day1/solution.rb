class Solution1
    def self.foo input
        largest = 0
        input.split("\n\n").each { |value|
            total = 0
            value.split("\n").each { |number| 
              total = total + number.to_i;
            }
            largest = total > largest ? total : largest;
        }
        largest
    end
end

class Solution2
    def self.foo input
        totals = Array.new
        largest = 0
        input.split("\n\n").each { |value|
            total = 0
            value.split("\n").each { |number| 
              total = total + number.to_i;
            }
            totals << total
        
        }
        totals.sort_by! { |number| -number}
        p totals
        totals[0] + totals[1] + totals[2]
    end
end