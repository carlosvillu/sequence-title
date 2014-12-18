class Ordinal extends require './base'

  constructor: (@string) ->
    @regexp_ordinal_first = /\s+(\d+)[º|ª]?\s(part|parte)/i
    @regexp_ordinal_last = /\s(part|parte)\s+(\d+)[º|ª]?/i
    super @string

  check: ->
    !!@string.match(@regexp_ordinal_first) or !!@string.match(@regexp_ordinal_last)

  sequence: ->
    return null unless @check()
    [res, ordinal, rest] = @string.match(@regexp_ordinal_first) or @string.match(@regexp_ordinal_last)
    [1..if parseInt(ordinal) then ordinal else rest].map ( e, i ) =>
      @string.replace /\s+(\d+)º?/, if @string.search(/º/) isnt -1 then " #{e}º" else " #{e}"



    

module.exports = Ordinal
