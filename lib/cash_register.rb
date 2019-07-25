require 'pry'

class CashRegister
  attr_accessor :discount, :total, :allItems, :price, :total1
  
  
  def initialize(total=0,discount=20)
    @total = total
    @discount=discount
    @allItems = []
    @total1 = 0
  end
  
  def total
    @total
  end
  
  def add_item(item,price,qty = 1)
   i=0
   
   while i< qty.to_i do
    @allItems << item
   # self.total+= price
    i+=1
   
   end 
 #  binding.pry
 @total = price * qty
   @price = price
   @total1 = @total1+ price * qty
   
   
   
   return @total1
 
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