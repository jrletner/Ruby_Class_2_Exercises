require_relative 'dish.rb'

class Menu 
  def initialize
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def remove_dish(dish_name)
    @dishes.delete_if { |dish| dish.name == dish_name }
  end

  def display_menu
    @dishes.map { |dish| dish.name}
  end
end

menu = Menu.new
dish1 = Dish.new("Spaghetti", 12.00)
dish2 = Dish.new("Salad", 8.50)
menu.add_dish(dish1)
menu.add_dish(dish2)
menu.remove_dish(dish2.name)