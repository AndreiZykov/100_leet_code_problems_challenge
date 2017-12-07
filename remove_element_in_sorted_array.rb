
# Given a sorted array, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# Example:

# Given nums = [1,1,2],

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
# It doesn't matter what you leave beyond the new length.

#  Time complexity O(n), Space complexity O(1) 

n = [1,1,1]

def remove_duplicates(nums)
    return 0 if nums.nil? || nums.length == 0
    temp_num = nil
    index = 0;
    while index <= nums.length
        if(nums[index] == temp_num)
          nums.delete_at(nums.index(nums[index]))
        else
           temp_num = nums[index] 
           index+=1
        end
    end
    return nums.length
end    

puts remove_duplicates(n)