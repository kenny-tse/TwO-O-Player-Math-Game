class Game

  def initialize(players)
    @players = players
    @turn = 0
  end

  attr_accessor :questions, :players, :turn

  def new_question
    firstNum = rand(1..20)
    secondNum = rand(1..20)
    questionAnswer = firstNum + secondNum

    puts "------NEW TURN-------"
    puts "#{players[turn].name}: What is #{firstNum} plus #{secondNum}?"
    print "> "
    
    ans = gets.chomp

    if ans != questionAnswer.to_s
      puts "Seriously? No!"
      players[turn].health = players[turn].health - 1
    end

    if ans == questions[:answer]
      puts "YES! You are correct!"
    end

    puts "#{players[0].name}: #{players[0].health_is?} vs #{players[1].name}: #{players[1].health_is?}"

    if turn == 0
      @turn = 1
    elsif turn == 1
      @turn = 0
    end

    if players[1].health == 0
      puts "#{players[0].name} wins with a score of #{players[0].health_is?}"
      puts "-----GAME OVER-----"
      puts "Good bye!"
    end
  end
end