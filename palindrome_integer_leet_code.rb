# Determine whether an integer is a palindrome



def is_palindrome(x)
  return false if x < 0 # start from "-" will never end with "-"
  begin
    res = x.to_s
    res = res.reverse!  
    res = Integer(res)
    return false if res > 2147483647 # largest signed integer  
    return x == res
  rescue
    return false
  end
end


puts ("123454321  is_palindrome: " + (is_palindrome(123454321) ? "true" : "false"))