
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


# GOAL: return final length of arithemtically-stepping array (or -1 if not possible)


def check_sequence(base_array, add_array)
    step = base_array[1] - base_array[0]
    if check_base_array(base_array, step)
        recursive_step_check(base_array, 0, add_array, 0, step)
        return base_array.length
    else
        return -1
    end
end


def check_base_array(base_array, step)
    index = 1
    last_index = base_array.length - 1

    while index < last_index
        current_num = base_array[index]
        next_num = base_array[index + 1]

        if next_num - current_num != step
            return false
        end

        index += 1
    end

    return true
end


def recursive_step_check(base_array, base_index, add_array, add_index, step)

end
