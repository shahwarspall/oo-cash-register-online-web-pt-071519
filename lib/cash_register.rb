require 'pry'

class CashRegister
  attr_accessor :discount, :total
  
  def initialize(discount = 0)
    @total = []
    @total = 0 
    @discount = discount
  
  end 
  
  def add_item(title,price,increase = 1)
    self.total 
    binding.pry
  end
 
 end