class CashRegister
  attr_accessor :discount, :total, :items
  attr_reader :price

  def initialize(discount = nil, total = 0, items = [] )
    @discount = discount
    @total = total
    @items = items
  end

  def price
    @price = price
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items << title }

  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= (@total * @discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction

  end
end
