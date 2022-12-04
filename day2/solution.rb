class Solution1
    def self.foo input
        total = 0
        wins = [
            ["A","Y"],
            ["B","Z"],
            ["C","X"]
        ]
        draws = [
            ["A","X"],
            ["B","Y"],
            ["C","Z"]
        ]
        input.split("\n").each { |value|
            case value.split()[1]
            when "X"
              total += 1
            when "Y"
               total +=2
           when "Z"
               total += 3
           end
            
            total += 6 if wins.include? value.split()
            total += 3 if draws.include? value.split()
        }
        total
    end
end

class Solution2
    def self.foo input
        total = 0
        lose = [
            ["A","Z"],
            ["B","X"],
            ["C","Y"]
        ]
        draw = [
            ["A","X"],
            ["B","Y"],
            ["C","Z"]
        ]
        win = [
            ["A","Y"],
            ["B","Z"],
            ["C","X"]
        ]
        input.split("\n").each { |value|
           round = value.split()
           case value.split()[1]
            when "X"
                myMove = lose             
            when "Y"
                myMove = draw
                total += 3
            when "Z"
                myMove = win
                total += 6
           end
           move = myMove.find {|move| 
            move[0] === round[0]
           }
           case move[1]
             when "X"
               total += 1
             when "Y"
                total +=2
            when "Z"
                total += 3
            end
            
        }
        total
    end
end