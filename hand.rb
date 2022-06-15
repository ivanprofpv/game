class Hand

  def initialize
    @cards = []
  end

  def add(card)
    @cards << card
  end

  def show
    @cards.each { |card| puts "Карта: #{card.number}#{card.picture}" }
  end

  def size
    @cards.size
  end

end