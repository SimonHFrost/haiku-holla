require "rubypython"

RubyPython.start # start the Python interpreter

cPickle = RubyPython.import("cPickle")
p cPickle.dumps("Testing RubyPython.").rubify

RubyPython.stop # stop the Python interpreter
