class User < Player

  def choose
    puts "Выберите действие. Вводите цифру строки: "
    puts '1. Пропустить'
    puts '2. Добавить карту' if hand.size != 3
    puts '3. Открыть карты'
    gets.chomp.to_i
  end

end