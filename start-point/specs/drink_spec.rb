require('minitest/autorun')
require('minitest/reporters')
require_relative('../drink.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinkTest < MiniTest::Test

    def test_drink_name_and_price()
        drink = Drink.new("CocaCola", 2)
        assert_equal("CocaCola", drink.name)
        assert_equal(2, drink.price)
    end

end
