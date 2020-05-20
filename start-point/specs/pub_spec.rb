require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

    def setup
        @drink1 = Drink.new("CocaCola", 2, 0)
        @drink2 = Drink.new("Whiskey", 20, 3)
        @drink3 = Drink.new("Orange Juice", 6, 0)

        @pub = Pub.new("The Code Pond", 500, [@drink1, @drink2, @drink3])

        @customer1 = Customer.new("John", 20, 25, 0)
        @customer2 = Customer.new("Maria", 80, 12, 0)
    end

    def test_pub_name_and_till_amount()
        assert_equal("The Code Pond", @pub.name())
        assert_equal(500, @pub.till_amount())
    end

    def test_check_pub_stock()
        assert_equal(3, @pub.check_pub_stock())
    end

    def test_increase_till_cash()
        assert_equal(502, @pub.increase_till_cash(@drink1))
    end

    def test_remove_drink()
        @pub.remove_drink(@drink1)
        assert_equal([@drink2, @drink3], @pub.drinks)
    end

    def test_order_drink__customer_is_an_adult_and_drunkenness()
        @pub.order_drink(@customer1, @drink2)
        assert_equal(520, @pub.till_amount)
        assert_equal(0, @customer1.wallet)
        assert_equal([@drink1, @drink3], @pub.drinks)
        assert_equal(25, @customer1.age)
        assert_equal(3, @customer1.drunkenness)
    end

end