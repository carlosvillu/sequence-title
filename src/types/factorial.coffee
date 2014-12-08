class Factorial extends require './base'

  constructor: (@string) ->
    @regexp = /\s+(\d+)\/(\d+)\s*/
    super @string

  sequence: ->
    return null unless @check()
    [res, actual, total] = @string.match @regexp
    [1..total].map ( e, i ) =>
      @string.replace /\s+(\d+)\//, " #{e}/"
    



module.exports = Factorial
