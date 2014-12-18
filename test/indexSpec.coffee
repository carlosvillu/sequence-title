expect = require('chai').expect
Sequence = require '../src'

TYPES =
  fractional: [
    'Marian November 29, 2014 Full Episode Part 2/4'
    'El Proyecto Revelación 1/2'
    '24 ORAS Weekend - December 6 2014 FULL EPISODE PART [1/3]'
    'Capítulo 4 de Tierra de Reyes (Parte 1 de 3)'
    '2/8 Emilio Carrillo en Alozaina Taller'
  ]
  ordinal: [
    'Steve Jobs 2º Parte Discurso con Subtítulos en Español'
    'Los Nuevos HAARP Parte 2 –Todos los HAARP del Mundo'
    'La Máquina que predice el futuro 2ª parte (el descubrimiento y el proyecto)'
  ]


describe 'Sequence', ->
  
  describe '::isSequence', ->

    it 'Fractional', ->
      expect( Sequence.isSequence( TYPES.fractional[0] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[1] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[2] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[3] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.fractional[4] ) ).to.be.true

    it 'Cardinal', ->
      expect( Sequence.isSequence( TYPES.ordinal[0] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.ordinal[1] ) ).to.be.true
      expect( Sequence.isSequence( TYPES.ordinal[2] ) ).to.be.true

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

      expect( Sequence.sequence( TYPES.fractional[4] ) ).to.be.eql [
        '1/8 Emilio Carrillo en Alozaina Taller'
        '2/8 Emilio Carrillo en Alozaina Taller'
        '3/8 Emilio Carrillo en Alozaina Taller'
        '4/8 Emilio Carrillo en Alozaina Taller'
        '5/8 Emilio Carrillo en Alozaina Taller'
        '6/8 Emilio Carrillo en Alozaina Taller'
        '7/8 Emilio Carrillo en Alozaina Taller'
        '8/8 Emilio Carrillo en Alozaina Taller'
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

      expect( Sequence.sequence( TYPES.ordinal[2] ) ).to.be.eql [
        'La Máquina que predice el futuro 1ª parte (el descubrimiento y el proyecto)'
        'La Máquina que predice el futuro 2ª parte (el descubrimiento y el proyecto)'
      ]
    
