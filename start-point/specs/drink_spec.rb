require('minitest/autorun')
require('minitest/reporters')
require_relative('../drink.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinkTest < MiniTest::Test

    def test_drink_name_and_price_and_alcohol_level()
        drink = Drink.new("CocaCola", 2, 0)
        assert_equal("CocaCola", drink.name)
        assert_equal(2, drink.price)
        assert_equal(0, drink.alcohol_level)
    end

end
