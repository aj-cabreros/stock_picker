

def stock_picker(array)

  buy_day = 0
  highest_profit = 0

  until buy_day == (array.length - 1) do

    sell_day = buy_day + 1

    buy = array[buy_day]
    #p "buy is #{buy}"

    until sell_day == array.length

      sell = array[sell_day]
      #p "sell is #{sell}"

      if highest_profit < (sell - buy)
        highest_profit = sell - buy
        #p "new highest_profit: #{highest_profit} at [#{buy_day},#{sell_day}]"
        best_days = [buy_day, sell_day]
      end 

      sell_day += 1
    end



    buy_day += 1


  end

  p best_days
  
end


#stock_picker([1, 5, 3, 10])
stock_picker([17,3,6,9,15,8,6,1,10])