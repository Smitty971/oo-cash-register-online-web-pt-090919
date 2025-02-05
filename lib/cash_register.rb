class CashRegister
  
  attr_accessor :discount, :total, :items, :last_transaction
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {
      @items << title
    }
    @last_transaction = price * quantity
  end
  
  def apply_discount 
    if @discount > 0 
     @discount = @discount/100.to_f 
      @total = @total - (@total * (@discount))
        "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction()
    @total -= @last_transaction
    if @items == [] 
     @total = 0.0 
    end
  end
  
  
end
