require('minitest/autorun')
require('minitest/reporters')
require_relative('../drink.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinkTest < MiniTest::Test

end
