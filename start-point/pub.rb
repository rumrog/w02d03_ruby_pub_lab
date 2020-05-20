class Pub 
    attr_reader :name

    def initialize(name, till, drinks = [])
        @name = name
        @till = till
        @drinks = drinks
    end

    def till_amount()
        return @till
    end
end