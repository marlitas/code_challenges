list_1 = ['ck', 'kc', 'ho', 'kc']
answer_1 = 4

def solution(A, palindrome = '', longest = 0):
    if not A:
        return longest

    for n in range(0,len(A)):
        palindrome += A[n]
        import pdb; pdb.set_trace()
        if palindrome == palindrome[::-1]:
            longest = len(palindrome)
        modified_list = A[n+1:]
        longest_palindrome = solution(modified_list, palindrome, longest)
        return len(palindrome)

print(solution(list_1))
