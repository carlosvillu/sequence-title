class Factorial extends require './base'

  constructor: (@string) ->
    @regexp = ///
                \s+   # One space
                \[*   # Zero o more open brackets
                (\d+) # Ordinal position
                \/    # Separator
                (\d+) # Total seq
                \]*   # Zero or more closed brackets
                \s*   # zero or more closed space
              ///
    @regexp_literal = ///
                        \s?
                        [part|parte]
                        \s+
                        (\d+)       # Ordinal position
                        \s?\w*\s? # Separator
                        (\d+)       # Total seq
                      ///i
    super @string

  check: ->
    !!@string.match(@regexp) or
    !!@string.match(@regexp_literal)

  sequence: ->
    return null unless @check()
    [res, actual, total] = if !!@string.match @regexp then @string.match @regexp else @string.match @regexp_literal
    [1..total].map ( e, i ) =>
      if( @string.match @regexp )
        @string.replace(
          ///
            \s+
            \[{0,1}
            (\d+)\/
          ///,
          if @string.match( /\s+\[(\d+)/ ) then " [#{e}/" else " #{e}/"
        )
      else
        parts = @string.split( /\s(\d+\s\w+\s\d+)/i )
        @string.replace(
          parts[1],
          parts[1].replace( /\d+\s+/, "#{e} " ),
        )


module.exports = Factorial
