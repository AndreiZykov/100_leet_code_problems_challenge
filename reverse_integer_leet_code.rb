# Given a 32-bit signed integer, reverse digits of an integer.

# Example 1:

# Input: 123
# Output:  321
# Example 2:

# Input: -123
# Output: -321
# Example 3:

# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.



y_1 = 123
y_2 = -123
y_3 = 120
y_4 = -120
y_5 = 9000000
y_6 = 1534236469

def reverse(x)
    is_negative = x < 0
    begin
      res = x.to_s
      res.sub!(/0+$/,'')
      res = res.reverse!  
      res.gsub!('-','') if is_negative
      res = Integer(res)
      return 0 if res > 2147483647 # largest signed integer  
      return is_negative ? -1 *  res : res
    rescue
      return 0
    end     
end


puts "#{y_1}: #{reverse(y_1)}"
puts "#{y_2}: #{reverse(y_2)}"
puts "#{y_3}: #{reverse(y_3)}"
puts "#{y_4}: #{reverse(y_4)}"
puts "#{y_5}: #{reverse(y_5)}"
puts "#{y_6}: #{reverse(y_6)}"