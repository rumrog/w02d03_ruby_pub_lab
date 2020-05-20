require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test
    
    def setup
        @customer = Customer.new("John", 20)
    end

    def test_customer_name_and_wallet()
        assert_equal("John", @customer.name)
        assert_equal(20, @customer.wallet)
    end

    def test_decrease_customer_wallet()
        @customer.decrease_wallet_cash(2)
        assert_equal(18, @customer.wallet)
    end

end