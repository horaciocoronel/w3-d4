require_relative './oop_inheritance/multilinguist.rb'

class MathGenius < Multilinguist

  def report_total(numbers_array)
    sum = numbers_array.sum
    return say_in_local_language("The total is #{sum}")
  end
end

class QuoteCollector < Multilinguist
  @@quotes = ["You can do anything, but not everything. —David Allen", "Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away. —Antoine de Saint-Exupéry", "You must be the change you wish to see in the world. —Gandhi", "We are what we repeatedly do; excellence, then, is not an act but a habit. —Aristotle"]
  def initialize(quote)
    @quote = quote
    @@quotes << @quote
  end
  def get_quote
    puts "Add a new quote in english:"
    user_quote = gets.chomp.to_s
    @@quotes << user_quote
    puts "I'm gonna translate it now"
    say_in_local_language(user_quote)
  end
  def self.quotes_reader
    @@quotes
  end
  def random_quote
    random_quote = @@quotes.sample
    say_in_local_language(random_quote)
  end
end

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465])

me.travel_to("India")
puts me.report_total([6,3,6,68,455,4,467,57,4,534])

me.travel_to("Spain")
puts me.report_total([324,245,6,343647,686545])

puts "*"*49

collector = QuoteCollector.new('You get what you pay for!')
collector.travel_to("Italy")
collector.get_quote
# puts QuoteCollector.random_quote
collector.travel_to("Spain")
puts collector.random_quote
collector.travel_to("Germany")
puts collector.random_quote
collector.travel_to("Japan")
puts collector.random_quote
