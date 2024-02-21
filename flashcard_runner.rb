require './lib/card'
require './lib/deck'
require './lib/round'


card_1 = Card.new("What is the powerhouse of the cell?", "Mitochondria", :Biology)

card_2 = Card.new("Who is known as the father of modern physics?", "Isaac Newton", :Physics)

card_3 = Card.new("What is the chemical symbol for water?", "H2O", :Chemistry)

card_4 = Card.new("Which planet is known as the Red Planet?", "Mars", :Astronomy)

card_5 = Card.new("Who developed the theory of relativity?", "Albert Einstein", :Physics)

card_6 = Card.new("Who was the prime minister of the UK during the majority of WWII?", :History)

cards = [ card_1, card_2, card_3, card_4, card_5, card_6]

deck = Deck.new(cards)

round = Round(deck)

def start 
  while round.current_card_index + 1 <= round.deck.length

    if round.current_card_index == 0
      puts "Welcome! You're playing with #{deck.length} cards."
      puts "-------------------------------"
      puts "This is card number #{round.current_card_index + 1} out of #{round.deck.length}"
      puts "Question: #{round.current_card}"

      guess = gets.chomp

      turn = round.take_turn(guess)
      puts "#{turn.answer}"
      puts "#{turn.feedback}"
      puts "This is card number #{round.current_card_index + 1} out of #{round.deck.length}"
      puts "Question: #{round.current_card}"
    else 
      puts "This is card number #{round.current_card_index + 1} out of #{round.deck.length}"
      puts "Question: #{round.current_card}"
      
      guess = gets.chomp

      turn = round.take_turn(guess)
      puts "#{turn.answer}"
      puts "#{turn.feedback}"
    end
    
  end  



end 
