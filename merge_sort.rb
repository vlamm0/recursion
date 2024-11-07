# merge sort recursive implementation
def merge_sort(arr)
  # base
  length = arr.length
  return arr if length == 1
  # recurse
  left, right = merge_sort(arr[0...length/2]), merge_sort(arr[length/2..])
  return merge(left, right)
end

# recursive merge
def merge(left, right, sorted = [])
  # base
  return sorted + right if left.empty?
  return sorted + left if right.empty?
  # recurse
  left[0] > right[0] ? sorted.push(right.shift) : sorted.push(left.shift) 
  merge(left, right, sorted)
end

p merge_sort([105, 79, 100, 110])