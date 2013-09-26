require 'lingua'
require 'set'

if (ARGV.length != 1)
  raise "Usage: haiku_holla.rb [text]"
end

@report = Lingua::EN::Readability.new(ARGV[0])
@syllables = @report.num_syllables

print 'There are '
print @syllables
puts ' syllables in the supplied input.'

if (@syllables != 17)
  abort("This isn't the correct number of syllables for a haiku.")
end

@words = ARGV[0].split(" ")
@syllabelCountMatch = Set.new [5, 12, 17]
@totalSyllabels = 0
@syllabelSet = Set.new
@words.each do |item|
  @report = Lingua::EN::Readability.new(item)
  @totalSyllabels += @report.num_syllables
  @syllabelSet.add(@totalSyllabels)
end

print 'Haiku: '
puts @syllabelCountMatch.subset? @syllabelSet
