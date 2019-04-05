require 'pry'
def random_number
  random_number = rand(1..6)
end 

def game_on(*input)
  rando = random_number 
  if input == rando
    binding.pry 
    puts "You guessed the correct number!"
  elsif input != rando || input != "exit" 
    puts "/The computer guessed #{rando}./"
  end
end 

def exit_game
puts "Goodbye!"
end 


def run_guessing_game
  #random_number
  puts "Guess a number between 1 and 6."
  guess = gets.chomp 
  while guess != "exit"  
    game_on(guess.to_i)
    puts "Guess a number between 1 and 6."
    guess = gets.chomp 
  end 
  if guess == "exit"
    puts "Goodbye!"
  end 
end 