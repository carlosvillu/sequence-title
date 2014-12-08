class BaseType

  constructor: (@string) ->
  check: -> !!@string.match(@regexp)
  sequence: -> Throw new Error 'BaseType#range'


module.exports = BaseType
