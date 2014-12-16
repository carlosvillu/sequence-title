class BaseType

  constructor: (@string) ->
  check: -> Throw new Error 'BaseType#check'
  sequence: -> Throw new Error 'BaseType#range'


module.exports = BaseType
