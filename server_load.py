def solution(A):
    target_sum = sum(A)/2
    small_half = recursion(target_sum, A)
    difference = sum(A) - (sum(small_half) * 2)

def recursion(target_sum, loads):
    if target_sum < 0:
        return None
    elif target_sum < 1:
        return list()
    for load in loads:
        difference = target_sum - load
        # loads.remove(load)
        difference_result = recursion(difference, loads)
        if isinstance(difference_result, list):
            return difference_result.append(load)



print(solution([1,2,3,4,5]))
print(1)
print('***********')
print(solution([100,2,8,4,5]))
print(81)
