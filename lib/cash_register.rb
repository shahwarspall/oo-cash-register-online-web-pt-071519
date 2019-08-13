
class CashRegister
  attr_accessor :discount, :total, :last, :items
  
  def initialize(discount = 0)
    @items = []
    @total = 0 
    @discount = discount
  
  end 
  
  def add_item(title,price,quantity = 1)
    self.total += price * quantity
    quantity.times do 
      @items << title
    end
    @last_item = price * quantity
  end
  
  
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  def void_last_transaction
    @items.pop
    self.total = self.total - @last_item

  
end