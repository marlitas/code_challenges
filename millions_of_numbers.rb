nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

# def count_nums(array, hash)
#   array.each do |num|
#     hash[num] += 1
#   end
#   hash
# end

# def find_matches(nums_1, nums_2, nums_3)
# 	hash = Hash.new(0)
# 	hash = count_nums(nums_1, hash)
# 	hash = count_nums(nums_2, hash)
# 	hash = count_nums(nums_3, hash)
#   hash.keys.find_all do |num|
# 		hash[num] == 3
# 	end
# end

def find_matches(*arrays)
  hash = Hash.new(0)
  arrays.flatten.each do |num|
    hash[num] += 1
  end
  hash.keys.find_all do |num|
		hash[num] == 3
	end
end

answer = [2, 5]
puts answer
puts find_matches(nums_1, nums_2, nums_3)
