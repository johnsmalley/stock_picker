=begin
This program determines the best day to buy and cell a stock
based on a list of numbers representing the stock price. 
This program is based on a ruby project lead by the The Odin Project
http://www.theodinproject.com/ruby-programming/building-blocks	
=end
 
 stock1 = [8, 9, 3, 10, 5, 10, 15, 1, 7, 14]
 
 def stock_picker(stock_prices)
 	count = 0 # represents the day starting at 0
 	buy_day = count
 	temp_buy_day = count
 	sell_day = count
 	profit = 0

 	stock_prices.each do |price|
 		if (price - stock_prices[buy_day]) > profit || (price - stock_prices[temp_buy_day]) > profit
 			sell_day = count
 			buy_day = temp_buy_day
 			profit = stock_prices[sell_day] - stock_prices[buy_day]
 		elsif price < stock_prices[buy_day]
 			temp_buy_day = count
 		end

 		count += 1 # move on to the next day
 	end

 	return [buy_day, sell_day]
 end

 puts stock_picker(stock1)