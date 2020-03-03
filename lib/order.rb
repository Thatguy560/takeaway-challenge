class Order
attr_reader :dishes, :menu
  def initialize(menu)
    @dishes = { Fish: 3, Chips: 2 }
    @menu = menu
  end  

  def add(dish, quantity)
    raise NoDishError, "#{dish.capitalize} isn't on the menu." unless @menu.has_dish?(dish)
    @dishes[dish] = quantity
  end
end 


class NoDishError < StandardError; end 
# The most standard error types are subclasses of StandardError
# NoDishError (Subclass) is an error I’ve named which inherits it’s properties 
# from StandardError (Parent class)