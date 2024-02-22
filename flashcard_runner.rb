require './lib/card'
require './lib/deck'
require './lib/round'

card_1 = Card.new("What is the powerhouse of the cell?", "Mitochondria", :Biology)

card_2 = Card.new("Who is known as the father of modern physics?", "Isaac Newton", :Physics)

card_3 = Card.new("What is the chemical symbol for water?", "H2O", :Chemistry)

card_4 = Card.new("Which planet is known as the Red Planet?", "Mars", :Astronomy)

card_5 = Card.new("Who developed the theory of relativity?", "Albert Einstein", :Physics)

card_6 = Card.new("Who was the prime minister of the UK during the majority of WWII?", "Winston Churchill", :History)

cards = [ card_1, card_2, card_3, card_4, card_5, card_6]

deck = Deck.new(cards)

$round = Round.new(deck)

def start
  round = $round
  while round.current_card_index + 1 <= round.deck.count

    if round.current_card_index == 0
      puts "Welcome! You're playing with #{round.deck.count} cards."
      puts "-------------------------------"
      puts "This is card number #{round.current_card_index + 1} out of #{round.deck.count}"
      puts "Question: #{round.current_card.question}"

      guess = gets.chomp

      turn = round.take_turn(guess)
      puts "#{turn.card.answer}"
      puts "#{turn.feedback}"
    else 
      puts "This is card number #{round.current_card_index + 1} out of #{round.deck.count}"
      puts "Question: #{round.current_card.question}"
      
      guess = gets.chomp

      turn = round.take_turn(guess)
      puts "#{turn.card.answer}"
      puts "#{turn.feedback}"
    end
    
  end  

  categories = round.deck.cards.map {|card| card.category}.uniq
  puts categories
  puts "****** Game Over! ******"
  puts "You had #{round.number_correct} correct guesses out of #{round.deck.count} for a total score of #{round.percent_correct}."

  # loop through the categories present in the deck 



end 

start