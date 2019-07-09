class Deck
    def initialize
        @cards = []
        ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each do |rank|
            ["Hearts", "Clubs", "Diamonds", "Spades"].each do |suit|
                card = Card.new(suit, rank)
                @cards << card
            end
        end
    end

    def cards
        @cards
    end

    def choose_card
        rand = Random.new(@cards.size).rand
        @cards.slice!(rand)
    end
end

class Card
    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end
