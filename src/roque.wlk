import pepita.*
import comidas.*

object roque{
		var property comidaActual = null
		var property posicion = game.at(2,1)
		
		method imagen()= "jugador.png"

	method encuentraComida(unaComida){
		self.soltarComidaActual()
		comidaActual = unaComida	
	}

	method soltarComidaActual(){
		if(self.tieneComida()){
			// TODO Generar una posición random podría ser una subtarea aparte, incluso responsabilidad para otro objeto.
			comidaActual.aparecer(game.at(0.randomUpTo(9),(0.randomUpTo(9))))
			comidaActual = null
		}
	}

	method tieneComida(){
		return comidaActual != null
	}

	method darleDeComer(unAve){
		// TODO Si hay un mensaje "tieneComida" => usalo!
		if(comidaActual != null){
		unAve.come(comidaActual)
		self.soltarComidaActual()
		// TODO ¿Cuántas veces hacés comidaActual = null?
		// Es un mal síntoma, parece que no tenés 100% control de lo que hace tu programa.
		comidaActual= null
		
	}
	else{game.say(self, "no tengo comida")}
	}
}
	