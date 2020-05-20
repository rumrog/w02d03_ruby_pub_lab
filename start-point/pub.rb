class Pub 
    attr_reader :name, :drinks

    def initialize(name, till, drinks = [])
        @name = name
        @till = till
        @drinks = drinks
    end

    def till_amount()
        return @till
    end

    def check_pub_stock()
        return @drinks.count()
    end

    def increase_till_cash(drink)
        @till += drink.price
    end

    def remove_drink(drink)
        @drinks.delete(drink)
    end

    def order_drink(customer, drink)
        if (@drinks.include?(drink) && customer.age >= 18)
            remove_drink(drink)
            increase_till_cash(drink)
            customer.decrease_wallet_cash(drink.price)
        end
    end
end