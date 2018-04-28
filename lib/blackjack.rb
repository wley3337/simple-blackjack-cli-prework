def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp 
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  fist_card = deal_card
  second_card = deal_card
  card_total = fist_card + second_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  want_a_card = get_user_input
  if want_a_card == 'h'
    card_total += deal_card
    return card_total
  elsif want_a_card == 's'
    card_total = card_total
    return card_total
  elsif want_a_card != 's' || 'h'
    invalid_command
    prompt_user
  end
  display_card_total(card_total)
  return card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid comand"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  new_card_total = initial_round
  until new_card_total > 21
     new_card_total = hit?(new_card_total)
     display_card_total(new_card_total)
  end 
  end_game(new_card_total)
end
    
