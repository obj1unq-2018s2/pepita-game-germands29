import pepita.*
import comidas.*

object roque{
		var property comidaActual = null
		var property posicion = game.at(2,1)
		
		method imagen()= "jugador.png"

	method encuentraComida(unaComida){
		if (comidaActual != null){
		comidaActual= unaComida	
		}
		else{
			game.addVisualIn(comidaActual, game.at(1,1))
		}
		
}
	method darleDeComer(){
		if(comidaActual != null){
		pepita.come(comidaActual)
	}
	else{game.say(self, "no tengo comida")}
	}
}
	