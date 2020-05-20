require('minitest/autorun')
require('minitest/reporters')
require_relative('../food.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FoodTest < MiniTest::Test

    def test_food_name_and_price_and_rejuvenation_level()
        food = Food.new("Haggis", 10, 2)
        assert_equal("Haggis", food.name)
        assert_equal(10, food.price)
        assert_equal(2, food.rejuvenation_level)
    end



end