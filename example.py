from haikus import HaikuText
text = HaikuText("one one one one one, one one one one one one one, one one one one one")

haikus = text.get_haikus()
print 'there are ' + str(len(haikus)) + ' haikus'

haiku = haikus[0]
print haiku.get_lines()
