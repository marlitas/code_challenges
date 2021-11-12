def solution(A):
  dict = {1: list()}
  for element in A:
    x = range(len(dict))
    for n in x:
        n = n + 1
        if not dict[n]:
            dict[n].append(element)
        elif element < min(dict[n]):
            dict[n].append(element)
        elif n == len(dict):
            dict[n + 1] = [element]
  return len(dict)

print(solution([5,4,3,6,1]))
print(solution([8,2,5,3,1]))
