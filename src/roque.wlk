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
			comidaActual.aparecer(game.at(0.randomUpTo(9),(0.randomUpTo(9))))
			comidaActual = null
		}
	}

	method tieneComida(){
		return comidaActual != null
	}

	method darleDeComer(unAve){
		if(comidaActual != null){
		unAve.come(comidaActual)
		self.soltarComidaActual()
		comidaActual= null
		
	}
	else{game.say(self, "no tengo comida")}
	}
}
	