class Dealer < Player

  def choose
    puts "У #{self.class} в руке: #{'* ' * hand.size} карты"
    points < 17 ? 2 : 1
  end

end