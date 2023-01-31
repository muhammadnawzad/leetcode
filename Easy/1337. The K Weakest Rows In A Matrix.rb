# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  weakest_rows = {}
  mat.each_with_index do |row, index|
    weakest_rows["#{index}"] = 0
    row.each do |col|
      if col == 1
        weakest_rows["#{index}"] += 1
      end
    end
  end

  answer = []
  weakest_rows.sort_by{|k,v| v}.each do |key, value|
    answer << key.to_i
  end
  answer[0...k]
end
