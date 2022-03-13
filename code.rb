require 'pry-byebug'

dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

def substrings(words, dictionary)
  matched_words = []

  dictionary.each { |substr| matched_words << words.scan(/#{substr}/i) }
  matched_words
    .flatten
    .map(&:downcase)
    .reduce(Hash.new(0)) do |result, substr|
      result[substr] += 1
      result
    end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
