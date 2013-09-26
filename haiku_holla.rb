require 'lingua'

if (ARGV.length != 1)
  raise "Usage: haiku_holla.rb [text]"
end

@text = Lingua::EN::Readability.new(ARGV[0])

print 'There are '
print @text.num_syllables
puts ' syllables in the supplied input.'
