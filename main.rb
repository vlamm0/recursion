# fibonacci sequence iteratively
def fibs(int)
  arr = [0,1]
  while arr.length != int
    arr.push(arr[-1] + arr[-2])
  end
  arr
end

# fibonacci sequence recursively
def fibs_rec(int, arr = [0,1])
  # base
  return arr if int == 2
  # recurse
  fibs_rec(int-1, arr.push(arr[-1] + arr[-2]))
end

p fibs(10)
p fibs_rec(20)