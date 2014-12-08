FactorialSeq = require './types/factorial'
OrdinalSeq = require './types/ordinal'

module.exports =

  isSequence: (string) ->
    new FactorialSeq(string).check() or new OrdinalSeq(string).check()

  sequence: (string) ->
    new FactorialSeq(string).sequence() or new OrdinalSeq(string).sequence()
