class Player

  attr_accessor :name
  attr_reader :points, :hand

  def initialize
    @name = ''
    @bank = 100
    @hand = Hand.new
    @points = 0
  end

  def refresh!
    @hand = Hand.new
    @points = 0
  end

  def draw_card(deck)
    card = deck.take_card
    @hand.add(card)
    add_points(card)
  end

  def take_money(amount)
    raise 'Нет денег!' if @bank < amount
    @bank -= amount
  end

  def give_money(amount)
    @bank += amount
  end

  def show_cards
    @hand.show
    puts "Очков: #{@points}, денег #{@bank}"
  end

  def add_points(card)
    if card.number == 'A' && @hand.size != 1
      if (2..10).cover?(points)
        @points += 11
      elsif (11..21).cover?(points)
        @points += 1
      end
    else
      @points += card.points 
    end
  end

end