require 'order' #Requiring our order class where our add method will be
class Takeaway 
  attr_reader :menu, :order
  
  def initialize(menu:, order:)
    @menu = menu
    @order = order || Order.new # If we haven't got an order passed in
    # we can pass in a default (Or Order.new)
  end
  
  def print_menu
    @menu.print
  end

  def place_order(dishes)
    dishes.each do |dish, quantity| # Dishes is a hash so we can loop through it.
      @order.add(dish, quantity)
    end
  end


end 