expect = require('chai').expect
Sequence = require '../src'

TYPES =
  fractional: [
    'Marian November 29, 2014 Full Episode Part 2/4'
    'El Proyecto Revelación 1/2'
    '24 ORAS Weekend - December 6 2014 FULL EPISODE PART [1/3]'
    'Capítulo 4 de Tierra de Reyes (Parte 1 de 3)'
  ]
  ordinal: [
    'Steve Jobs 2º Parte Discurso con Subtítulos en Español'
    'Los Nuevos HAARP Parte 2 –Todos los HAARP del Mundo'
  ]


describe 'Sequence', ->
  
  describe '::isSequence', ->

    it 'Fractional', ->
      expect( Sequence.isSequence( TYPES.fractional[0] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[1] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[2] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[3] ) ).to.be.true

    it 'Cardinal', ->
      expect( Sequence.isSequence( TYPES.ordinal[0] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.ordinal[1] ) ).to.be.true

  describe '::range', ->

    it 'Factorial', ->
      expect( Sequence.sequence( TYPES.fractional[0] ) ).to.be.eql [
        'Marian November 29, 2014 Full Episode Part 1/4'
        'Marian November 29, 2014 Full Episode Part 2/4'
        'Marian November 29, 2014 Full Episode Part 3/4'
        'Marian November 29, 2014 Full Episode Part 4/4'
      ]

      expect( Sequence.sequence( TYPES.fractional[1] ) ).to.be.eql [
        'El Proyecto Revelación 1/2'
        'El Proyecto Revelación 2/2'
      ]

      expect( Sequence.sequence( TYPES.fractional[2] ) ).to.be.eql [
        '24 ORAS Weekend - December 6 2014 FULL EPISODE PART [1/3]'
        '24 ORAS Weekend - December 6 2014 FULL EPISODE PART [2/3]'
        '24 ORAS Weekend - December 6 2014 FULL EPISODE PART [3/3]'
      ]

      expect( Sequence.sequence( TYPES.fractional[3] ) ).to.be.eql [
        'Capítulo 4 de Tierra de Reyes (Parte 1 de 3)'
        'Capítulo 4 de Tierra de Reyes (Parte 2 de 3)'
        'Capítulo 4 de Tierra de Reyes (Parte 3 de 3)'
      ]


    it 'Cardinal', ->
      expect( Sequence.sequence( TYPES.ordinal[0] ) ).to.be.eql [
        'Steve Jobs 1º Parte Discurso con Subtítulos en Español'
        'Steve Jobs 2º Parte Discurso con Subtítulos en Español'
      ]

      expect( Sequence.sequence( TYPES.ordinal[1] ) ).to.be.eql [
        'Los Nuevos HAARP Parte 1 –Todos los HAARP del Mundo'
        'Los Nuevos HAARP Parte 2 –Todos los HAARP del Mundo'
      ]
    
