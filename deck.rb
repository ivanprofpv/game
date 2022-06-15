class Deck

  NUMBER = %w[2 3 4 5 6 7 8 9 10 J Q K A]
  PICTURE = %w[♣ ♥ ♠ ♦] #крести червь пики буби
  POINTS = { 'A' => 11,'J' => 10,'Q' => 10,'K' => 10 }

  def initialize
    @cards = []
    make_deck!
    shuffle!
  end

  def take_card
    @cards.pop
  end

  def make_deck!
    NUMBER.each do |number|
      PICTURE.each do |picture|
        points = POINTS.key?(number) ? POINTS[number] : number.to_i
        @cards << Card.new(number: number, picture: picture, points: points)   
      end
    end
  end

  def shuffle!
    @cards.shuffle!.reverse!
  end
end