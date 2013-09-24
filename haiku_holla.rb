require "rubypython"

# You'll have to change this to whereever your python installation with the haiku package is
RubyPython.start_from_virtualenv("/usr/ENV")

sys = RubyPython.import("sys")
p sys.path

haikus = RubyPython.import("haikus")

RubyPython.stop # stop the Python interpreter
