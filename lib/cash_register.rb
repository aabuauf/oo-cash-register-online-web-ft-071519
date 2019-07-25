require 'pry'

class CashRegister
  attr_accessor :discount, :total, :allItems, :price
  
  
  def initialize(total=0,discount=10)
    @total = total
    @discount=discount
    @allItems = []
  end
  
  def total
    @total
  end
  
  def add_item(item,price,qty = 1)
   i=0
   binding.pry
   while i< qty.to_i do
    @allItems << item
    self.total+= price
    i+=1
   
   end 
   
   @price = price
#   total1 = @total+ price * qty
  
#   @total = price * qty
   
 #  return total1
 
  end
  
  def apply_discount

   @total =@total - @total * @discount/100

    if @total == 0 
      return "There is no discount to apply."
    else
     return "After the discount, the total comes to $#{@total}."
   end
  end
  
  def items
    @allItems
  end
  
  def void_last_transaction
    @total = @total - @price
  end
end