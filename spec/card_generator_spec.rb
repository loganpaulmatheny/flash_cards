require './lib/card_generator'
filename = "cards.txt"

RSpec.describe CardGenerator do 
  it "create cards from a text file" do
    cards = CardGenerator.new(filename).cards
    expect(cards.length).to eq(4)
  end

end 