
base_array = [1, 4, 7]
add_array = [0, 3, 7, 10]
# => [1, 4, 7, 10], arithmetic step = 3; function returns length of 4


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


# GOAL: return final length of arithemtically-stepping array (or -1 if not possible)



def check_sequence(base_array, add_array)
    max_length = -1
    step = 0    # 0 indicates no arithmetic sequence detected

    def check_base_array()
        # check if base_array starts w/ arithmetic sequence -- 
        # possible to roll in w/ main recursive function?
        if base_array[0] && base_array[1]
            step = base_array[1] - base_array[0]
            if base_array[2] && base_array[2] - base_array[1] == step
                recursive_insert_num(index: 2)
            else
                step = 0    # reset step
            end
        else
            return_max_length
        end
    end


    def return_max_length()
        return max_length
    end


    def resursive_insert_num(index: 0)
        puts "Calling resursive_insert_num, index #{index}..."


    end

end


check_sequence(base_array, add_array)





























# FIRST ATTEMPT:
# ======================

# def check_sequence(base_array, add_array)
#     step = base_array[1] - base_array[0]
#     new_base_array = base_array     # only mutate base_array once 
#     max_array_length = 0

#     if check_base_array(base_array, step)   
#         # THIS DOES NOT ACCOUNT FOR the possible sequences created by adding to base_array...
#         recursive_step_check(new_base_array, 0, add_array, 0, step, base_array, max_array_length)
#         return max_array_length
#     else
#         return -1
#     end
    
# end


# def check_base_array(base_array, step)
#     index = 1
#     last_index = base_array.length - 1

#     while index < last_index
#         current_num = base_array[index]
#         next_num = base_array[index + 1]

#         if next_num - current_num != step
#             return false
#         end

#         index += 1
#     end

#     return true
# end


# def recursive_step_check(base_array, base_index, add_array, add_index, step, orig_base_array, max_array_length)
#     #   1. new-num (0), current (1), next (4)           => if steps are equal, recursively check rest of the array!
#     #   2. new-num (0), current (1), next-new-num (3)

#     base_num = base_array[base_index]
#     base_next_num = base_array[base_index + 1]
#     add_num = add_array[add_index]

#     if add_num < base_num && base_num - add_num == step     # in sequence, before base_num
#         base_array.insert(base_index, add_num)
#         add_index += 1

#     elsif add_num > base_num && add_num - base_num == step  # in sequence, after base_num
#         base_array.insert(base_index + 1, add_num)
#         add_index += 1

#     elsif add_num > base_num && add_num - base_num != step
#         base_index += 1

#     elsif add_num == base_num
#         add_index += 1
#     end

#     if base_array[base_index] && add_array[add_index]
#         recursive_step_check(base_array, base_index, add_array, add_index, step, orig_base_array, max_array_length)
#     else
#         if base_array.length > max_array_length
#             max_array_length = base_array.length
#         end
#         base_array = orig_base_array

#         # try before
#         new_step = base_array[0] - add_array[0]
#         if new_step && new_step > 0
#             base_array.inser(0, add_array[0])
#             add_array.shift
#             recursive_step_check(base_array, 0, add_array, 0, new_step, orig_base_array, max_array_length)
#         end

#         # try after
#         new_step = add_array[1] - base_array[0]
#         if new_step && new_step > 0
#             base_array.insert(1, add_array[1])
#             add_array.delete_at(1)
#             recursive_step_check(base_array, 0, add_array, 0, new_step, orig_base_array, max_array_length)
#         end

#     end
    
# end


# check_sequence(base_array, add_array)