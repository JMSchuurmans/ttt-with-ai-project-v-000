class TicTacToeController

  def start
    input = ""

    while input != "exit"
      puts "Welcome to Tic Tac Toe!"
      puts "How many players today? 0, 1, or 2?"

      input = gets.strip

      case input
      when "0"
        zero_player_game
      when "1"
        one_player_game
      when "2"
        two_player_game
      end
    end
  end

  def zero_player_game
    Game.player_1 = Players::Computer.new("X")
    Game.player_2 = Players::Computer.new("O")
  end

  def one_player_game
    puts "Which token would you like to be? X or O?"
    input = gets.strip.upcase
    if input == "X"
      Game.new.player_1 = Players::Human.new("X")
      Game.new.player_2 = Players::Computer.new("O")
    elsif input == "O"
      Game.new.player_1 = Players::Human.new("O")
      Game.new.player_2 = Players::Computer.new("X")
    else
      puts "Invalid input."
    end
    Game.play
  end

  def two_player_game
    puts "Player 1 will go first. Please choose X or O."
    input = gets.strip.upcase
    if input == "X"
      Game.player_1 = Players::Human.new("X")
      Game.player_2 = Players::Human.new("O")
    elsif input == "O"
      Game.player_1 = Players::Human.new("O")
      Game.player_2 = Players::Human.new("X")
    else
      puts "Invalid input."
    end
  end
end
