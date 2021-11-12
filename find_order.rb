order_menu = {
      'veggie sandwich' => 6.85,
      'extra veggies' => 2.20,
      'chicken sandwich' => 7.85,
      'extra chicken' => 3.20,
      'cheese' => 1.25,
      'chips' => 1.40,
      'nachos' => 3.45,
      'soda' => 2.05,
    }
receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]

def find_order(receipt, menu)
  require "pry"; binding.pry
  og_receipt = receipt
	item_count = Hash.new(0)
	menu.each do |item, price|
		if receipt == 0
			break
		elsif receipt >= price
			diff = (receipt - price).round(2)
			receipt = value_check(diff, item, price, menu.values, item_count)
		end
	end
  if receipt == 0
	   item_count
  else
    #destroys original hash, use different call
    menu.delete(menu.keys[0])
    find_order(og_receipt, menu)
  end
end

def value_check(diff, item, price, menu_prices, item_count)
	if diff == 0
    item_count[item] += 1
		diff
	elsif diff < menu_prices.min()
		receipt = (diff + price).round(2)
	elsif diff >= price
		item_count[item] += 1
		receipt = diff
		diff = (receipt - price).round(2)
		value_check(diff, item, price, menu_prices, item_count)
  else
    item_count[item] += 1
    diff
	end
end

def process_receipts(receipts, menu)
  results = {}
  receipts.each do |receipt|
    results[receipt] = find_order(receipt, menu)
  end
  puts results
end

answer_1 = {'extra veggies': 1, 'cheese': 1, 'chips': 1}
answer_2 = {'chicken sandwich': 1, 'extra chicken': 1}
answer_3 = {'chicken sandwich': 1, 'extra veggies': 1, 'cheese': 1, 'nachos': 1}

# puts answer_1
# puts find_order(4.85, order_menu)
# puts '*****************'
# puts answer_2
# puts find_order(11.05, order_menu)
puts '*****************'
process_receipts(receipts, order_menu)
