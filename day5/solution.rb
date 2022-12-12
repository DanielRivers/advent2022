class Solution1
    def self.foo input, reverse
        cargo_data,moves = input.split("\n\n")
        cargo_rows = cargo_data.split("\n");
        columns = (cargo_rows[0].length + 1) / 4
        cargo_rows.pop()
        cargo = Array.new(columns) {Array.new()}
        cargo_rows.each do |row| 
            (0...columns).each { |column| 
                cargo[column].unshift(row[1 + (column * 4)]) unless row[1 + (column * 4)] == " "
            }
        end
        
        moves.split("\n").each do |move|
            move_amount, from_col, to_col = move.scan(/(\d+)/)
            if reverse 
                cargo[to_col[0].to_i - 1] = cargo[to_col[0].to_i - 1] + (cargo[from_col[0].to_i - 1].pop(move_amount[0].to_i)).reverse
            else
                cargo[to_col[0].to_i - 1] = cargo[to_col[0].to_i - 1] + (cargo[from_col[0].to_i - 1].pop(move_amount[0].to_i))
            end
        end
        
        result = ''
        cargo.each do |item|
            result = result + item[item.length-1]
        end
        result
    end
end


