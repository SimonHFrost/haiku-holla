require 'lingua'

haiku = "one one one one one, one one one one one one one, one one one one one"

@text = Lingua::EN::Readability.new(haiku)

puts @text.num_syllables
