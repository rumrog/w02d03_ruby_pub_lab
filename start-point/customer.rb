class Customer 
    attr_reader :name, :wallet

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
        @drinks = []
    end

    def decrease_wallet_cash(amount)
        @wallet -= amount
    end

end