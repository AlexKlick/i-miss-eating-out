require 'pry'

class Restaurant

    attr_reader :opening_time, :name, :dishes

    def initialize(opening_time,name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    end
    
    def closing_time(hours)
        closing_time = opening_time.to_i + hours
    end

    def add_dish(dish)
        dishes.append(dish)
    end

    def open_for_lunch?
        if opening_time.to_i < 12
            true
        else
            false
        end

    end

    def menu_dish_names
        dishes.map {|dish| dish.upcase}
    end

    def announce_closing_time(hours)
        closing_t = opening_time.to_i + hours
        if closing_t > 12
            time = closing_t - 12
            ampm = 'PM'
        else
            time = closing_t
            ampm = 'AM'
        end
        p "#{name} will be closing at #{time.to_s + ampm}"
    end

end
restaurant = Restaurant.new('10:00', 'Fuel Cafe')
p restaurant.opening_time
p restaurant.name
p restaurant.dishes
restaurant.add_dish('Burrata')
restaurant.add_dish('Pizzetta')
restaurant.add_dish('Ravioli')
restaurant = Restaurant.new('16:00', 'Il Poggio')
restaurant.announce_closing_time(5)

binding.pry