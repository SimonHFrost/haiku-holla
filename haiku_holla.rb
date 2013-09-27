require 'lingua'
require 'set'

if (ARGV.length != 1)
  raise "Usage: haiku_holla.rb [text]"
end

@report = Lingua::EN::Readability.new(ARGV[0])
@syllables = @report.num_syllables

if (@syllables != 17)
  false
end

@syllabelCountMatch = Set.new [5, 12]
@words = ARGV[0].split(" ")

@totalSyllabels = 0
@syllabelSet = Set.new

@words.each do |item|
  @report = Lingua::EN::Readability.new(item)
  @totalSyllabels += @report.num_syllables
  @syllabelSet.add(@totalSyllabels)
end

@syllabelCountMatch.subset? @syllabelSet
