# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start
# at 0.

def stock_picker(array)
  max_difference = []
  max = 0

  array.each.with_index do |buy_price, buy_index|
    array[buy_index+1..-1].each.with_index do |sell_price, sell_index|
      
      profit = sell_price - buy_price

      if profit > max
        max = profit
        max_difference = [buy_index, sell_index + buy_index + 1]
      end
    end
  end
  max_difference
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4] for a profit of $15 - $3 == $12