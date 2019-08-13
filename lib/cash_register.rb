
class CashRegister
  attr_accessor :discount, :total,  :last
  
  def initialize(discount = nil)
    @items = []
    @total = 0 
    @discount = discount
  
  end 
  
  def items 
    @items
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
      @items << title
    end
    @last = price * quantity
  end
  
  def apply_discount 
        if discount 
    @total -= @total * @discount/ 100
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
  
  
  def void_last_transaction
    @items.pop
    self.total = self.total - @last
  
  end
  
end