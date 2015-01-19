Sequence title
=============

Sequence títulos de películas

### Install

Dependencies: 

* nodeJS 0.10
* npm 1.4

#### How to install

        $ git clone https://github.com/carlosvillu/sequence-title
        $ cd sequence-title
        $ npm install


### Description

Simple módulo para poder encontrar patrones que corresponden a secuencias dentro de cadenas. Actualmente detecta dos tipos de secuencias:

* Fracionaria: "Mi titulo de película 1/3"
* Ordinal: "Mi titulo de película 2º parte"

`Puedes ver más tipos en los tests`

La finalidad del módulo es la de porpocionar la secuencia completa dando solo una parte de ella.
Ej.:

```js
	var sequence = require( 'sequence-title' ),
		title = "Mi película 2/3";
	
	if( sequence.isSequence( title ) ){
		sequence.sequence( title ).forEach( function( part ){
			console.log( part );
		} );
	}
	
	// Mi película 1/3
	// Mi película 2/3
	// Mi película 3/3
	
```






[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/carlosvillu/sequence-title/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

