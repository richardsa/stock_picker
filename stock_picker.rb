prices = [3, 12, 1, 8, 9, 2, 14, 4, 7, 6]
prices.shuffle!
puts "Stock prices #{prices.join(', ')}"
def stock_picker(prices)
  buy = 0
  buy_day = 0
  sell = 0
  sell_day = 0
  comparison_array = []
  i = 1
  j = 0
  profit = 0
  prices.each do |price|
    comparison_array = prices[i..-1]
    j = i
    comparison_array.each do |price2|
      if (price2 - price) > (sell - buy)
        sell = price2
        buy = price
        buy_day = i-1
        profit = sell - buy
        sell_day = j
        j += 1
      end
      j += 1
    end
    i += 1
  end
  puts "Buy price of $#{buy}.00 on day #{buy_day} and sell price of $#{sell}.00 on day #{sell_day} for a profit of $#{profit}.00."
end

stock_picker(prices)