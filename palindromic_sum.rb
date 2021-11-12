def palindromic_sum(num = 0, array = [])
	inverse = num.to_s.reverse.to_i
	sum = num + inverse
  if array.length == 25
    return array
	elsif sum > 1000 && sum == sum.to_s.reverse.to_i
		array << num
    palindromic_sum(num+1, array)
	else
		palindromic_sum(num+1, array)
	end
end

puts palindromic_sum()
