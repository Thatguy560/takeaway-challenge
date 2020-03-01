class Menu
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end
  
  def print
    @dishes.map do |food, price| 
      "%s £%.2f" % [food, price] # "%.2f" Converts a number to 2dp
    end.join(", ") # Converts symbols into strings.
  end

end