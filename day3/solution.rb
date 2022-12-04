class Solution1
    def self.foo input
        total = 0
        items = input.split()

        items.each { |item|
            part1 = item[0...item.length/2]
            part2 = item[item.length/2...item.length]

            matchletter = part1.split('').find { |letter|
                part2.split('').include?(letter)
            }

            if (matchletter.ord > 96) 
                total += (matchletter.ord - 96) 
            else 
                total += (matchletter.ord - 38) 
            end
        }
        total
    end
end

class Solution2
    def self.foo input
       total = 0
        items = input.split();
        while items.length != 0 do
            matchletter = items[0].split('').find { |letter|
                items[1].split('').include?(letter) and items[2].split('').include?(letter)
            }
            if (matchletter.ord > 96) 
                total += (matchletter.ord - 96) 
            else 
                total += (matchletter.ord - 38) 
            end
            items.shift(3)
        end
       total
    end
end