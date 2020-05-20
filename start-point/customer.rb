class Customer 
    attr_reader :name, :wallet, :age

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age

    end

    def decrease_wallet_cash(amount)
        @wallet -= amount
    end

end