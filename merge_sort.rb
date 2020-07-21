def merge_sort(array) #[4,2,1,3]
    return array if array.length < 2
    middle = array.length / 2
    left = array[0..middle - 1] 
    right = array[middle..array.length - 1]
    left_array = merge_sort(left)
    right_array = merge_sort(right)
    merge(left_array, right_array)
end


def merge(array1, array2) #([2,4],[1,3])
    return array2 if array1.empty? 
    return array1 if array2.empty?

    if array1.first < array2.first
        [array1.first] + merge(array1[1..-1], array2)
    else
        [array2.first] + merge(array1, array2[1..-1])
    end
end
#p merge_sort([3,2,4,1,5,6,8,7]) => [1,2,3,4,5,6,7,8]
