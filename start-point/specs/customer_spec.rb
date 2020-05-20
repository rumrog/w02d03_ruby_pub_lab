require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test
    
    def setup
        @customer1 = Customer.new("John", 20)
        @customer2 = Customer.new("Maria", 80)
    end

    def test_customer_name_and_wallet()
        assert_equal("John", @customer1.name)
        assert_equal(20, @customer1.wallet)
    end

end