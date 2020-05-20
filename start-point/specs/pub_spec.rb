require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

    def setup
        @pub = Pub.new("The Code Pond", 500, [@drink1, @drink2, @drink3])

        @drink1 = Drink.new("CocaCola", 2)
        @drink2 = Drink.new("Whiskey", 20)
        @drink3 = Drink.new("Orange Juice", 6)
    end

    def test_pub_name_and_till_amount()
        assert_equal("The Code Pond", @pub.name())
        assert_equal(500, @pub.till_amount())
    end

    def test_check_pub_stock()
        assert_equal(3, @pub.check_pub_stock())
    end

    # def test_take_out_drink()

    # end

end