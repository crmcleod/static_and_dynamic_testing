require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../card')
require_relative('../card_game')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

    def setup()
        @card1 = Card.new("Club", 4)
        @card2 = Card.new("Diamond", 8)
        @card3 = Card.new("Heart", 1)
        @card_game = CardGame.new()
    end
    
    def test_check_for_ace__true
        assert_equal(true, @card_game.check_for_ace(@card3))
    end
    
    def test_check_for_ace__false
        assert_equal(false, @card_game.check_for_ace(@card2))
    end

    def test_highest_card()
        result = @card_game.highest_card(@card1, @card2)
        assert_equal(8, result.value)
    end

    def test_self_cards_total()
        cards = [@card1, @card2, @card3]
        result = CardGame.cards_total(cards)
        assert_equal("You have a total of 13", result)
    end

end