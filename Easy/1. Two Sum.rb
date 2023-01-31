# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |number, index|
    if nums.include?(target - number) && index != nums.index(target - number)
      return [index, nums.index(target - number)]
    end
  end
end
