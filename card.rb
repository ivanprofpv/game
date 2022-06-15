class Card

  attr_reader :number, :picture, :points

  def initialize(number:, picture:, points:)
    @number = number
    @picture = picture
    @points = points
  end

end