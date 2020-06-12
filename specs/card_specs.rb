require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../card')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardTest < MiniTest::Test

    def setup()
        @card1 = Card.new("Club", 4)
        @card2 = Card.new("Diamond", 8)
        @card3 = Card.new("Heart", 1)
    end

    def test_card_suit
        assert_equal("Club", @card1.suit)
    end

    def test_card_value
        assert_equal(8, @card2.value)
    end

end

