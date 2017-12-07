
#  LeetCode

# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,

#  Time complexity O(n), Space complexity O(n) 

nums_1 = [2, 7, 11, 15]
nums_2 = [2,6,4,2,3,8,4,5,7,8,9,5,3,4,6,11,34,2,3,6]
nums_3 = []
nums_4  = nil  

def two_sum(nums, target)
    return [0,0] if nums.nil?
    compliment_hash = {}
    index = 0
    nums.each do |num|  
      compliment_hash[target - num] = index  
      index += 1    
    end 
    index = 0
    nums.each do |num|
        compliment_index = compliment_hash[num]
        if(!compliment_index.nil? && compliment_index != index)
            res = []
            res << index
            res << compliment_index
          return res
        end    
        index += 1
    end  
    return [0,0]
end

puts two_sum(nums_1, 9).to_s
puts two_sum(nums_2,11).to_s
puts two_sum(nums_3, 5).to_s
puts two_sum(nums_4, 8).to_s