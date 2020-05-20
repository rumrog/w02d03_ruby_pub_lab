class Customer 
    attr_reader :name, :wallet, :age, :drunkenness

    def initialize(name, wallet, age, drunkenness)
        @name = name
        @wallet = wallet
        @age = age
        @drunkenness = 0

    end

    def decrease_wallet_cash(amount)
        @wallet -= amount
    end

    def increase_customer_drunkenness(drink)
        @drunkenness += drink.alcohol_level
    end

end