require('minitest/autorun')
require('minitest/reporters')
require_relative('../drink.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinkTest < MiniTest::Test

    def setup
        @drink1 = Drink.new("CocaCola", 2)
        @drink2 = Drink.new("Whiskey", 20)
        @drink3 = Drink.new("Orange Juice", 6)
    end

    def test_drink_name_and_price()
        assert_equal("CocaCola", @drink1.name)
        assert_equal(2, @drink1.price)
    end

end
