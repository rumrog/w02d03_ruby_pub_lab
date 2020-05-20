require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer')
require_relative('../drink')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test
    
    def setup
        @drink = Drink.new("Whiskey", 20, 3)
        @customer = Customer.new("John", 20, 25, 0)
    end

    def test_customer_name_wallet_and_age_and_drunkenness()
        assert_equal("John", @customer.name)
        assert_equal(20, @customer.wallet)
        assert_equal(25, @customer.age)
        assert_equal(0, @customer.drunkenness)
    end

    def test_decrease_customer_wallet()
        @customer.decrease_wallet_cash(2)
        assert_equal(18, @customer.wallet)
    end

    def test_increase_customer_drunkenness()
        @customer.increase_customer_drunkenness(@drink)
        assert_equal(3, @customer.drunkenness)
    end

end