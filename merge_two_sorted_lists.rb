
# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

# Example:

# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4

#  Time complexity O(n), Space complexity O(n) 

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

n1 = ListNode.new(1)
n1.next = ListNode.new(2)
n1.next.next = ListNode.new(4)

n2 = ListNode.new(2)
n2.next = ListNode.new(3)
n2.next.next = ListNode.new(4)

def merge_two_lists(l1, l2)
  
  return l2 if l1.nil?
  return l1 if l2.nil?

  res, head = nil
  if l1.val < l2.val 
    head = l1
    l1 = l1.next 
  else  
    head = l2
    l2 = l2.next 
  end  
  res = head
  while !l1.nil? || !l2.nil?
    if l2.nil? || (!l1.nil? && !l2.nil? && l1.val < l2.val) 
        res.next = ListNode.new(l1.val)
        l1 = l1.next 
    else  
        res.next = ListNode.new(l2.val) 
        l2 = l2.next 
    end 
    res = res.next
  end  
  return head
end

merge_two_lists(n1,n2)
 