# fibonacci sequence iteratively
def fibs(int)
  arr = [0,1]
  while arr.length != int
    arr.push(arr[-1] + arr[-2])
  end
  arr
end

p fibs(10)