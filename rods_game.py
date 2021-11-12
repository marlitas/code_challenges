#Example 1
string_1 = 'R0B0'
answer_1 = 0
string_2 = 'G2G1B2R1B1R2'
answer_2 = 2

#how to determine answer
def solution(string):
#split string into dict
    pairs = list()
    count = 0
#split string into array of pairs
    for n in range(0, len(string), 2):
        pairs.append(string[n:n+2])
#iterate through array saving second character in pair as key and first as value
    ring_scores = dict()
    for x in pairs:
        if int(x[1]) in ring_scores.keys():
            ring_scores[int(x[1])].add(x[0])
        else:
            ring_scores[int(x[1])] = set((x[0]))
#iterate through dict

    for n in range(0,9):
        if n in ring_scores.keys():

            if len(ring_scores[n]) == 3:
                count += 1
    return count
#if value set length is equal to three
#the winning count should increase by one
#if not, move on to next key/value pair

# print(solution(string_1))
print(solution(string_2))
