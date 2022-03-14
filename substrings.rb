# frozen_string_literal: true

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
    .each_with_object(Hash.new(0)) { |substr, result| result[substr] += 1 }
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
