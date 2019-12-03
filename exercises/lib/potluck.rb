class Potluck
  attr_reader :date, :dishes, :menu_base
  def initialize(date)
    @date = date
    @dishes = []
    @menu_base = { appetizers: [], entres: [], dessert: [] }
  end
  
  def add_dish(dish)
    dishes << dish
    add_dish_to_menu(dish)
  end
  
  def add_dish_to_menu(dish)
    @menu_base[:appetizers] << dish.name if dish.type == :appetizer
    @menu_base[:entres]     << dish.name if dish.type == :entre
    @menu_base[:dessert]    << dish.name if dish.type == :dessert
  end
  
  def get_all_from_category(category)
    dishes.find_all do |dish|
      dish.type == category
    end
  end
  
  def menu
    menu_base.keys.map do |key|
      menu_base[key].sort!
    end
    menu_base
  end
  
  def ratio(category)
    total_count = @menu_base.values.flatten.count
    category_count = get_all_from_category(category).count
    category_count.to_f / total_count * 100
  end
end