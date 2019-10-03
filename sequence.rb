
base_array = [1, 4, 7]
add_array = [0, 3, 7, 10]
# => [1, 4, 7, 10], arithmetic step = 3


# REMEMBER: you only need to check 3 points at a time: before-current-after
# So, you need to check:
#   1. new-num (0), current (1), next (4)           => if steps are equal, recursively check rest of the array!
#   2. new-num (0), current (1), next-new-num (3)


# steps:
#   - check if new-num (0) can be added BEFORE current (1)
#       - calculate new step => initiate recursion? (check if step applies thru rest of array)
#       - check if NEXT (4) is in sequence

#       - check if next-new-num (3) is in sequence if added AFTER current (1)
#           - recursively check new possible step??