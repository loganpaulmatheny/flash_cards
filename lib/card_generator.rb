require_relative 'card'

class CardGenerator
  def initialize(filename)
    @filename = filename
  end

  def cards
    card_data = File.readlines(@filename)
    card_data.map { |line| create_card(line) }
  end

  private

  def create_card(line)
    question, answer, category = line.chomp.split(',')
    Card.new(question, answer, category)
  end
end


