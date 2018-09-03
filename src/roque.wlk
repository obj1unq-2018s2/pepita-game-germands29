import pepita.*
import comidas.*

object roque{
		var property comidaActual = manzana
		var property posicion = game.at(2,1)
		
		method imagen()= "jugador.png"

	method encuentraComida(unaComida){
		if (comidaActual != unaComida){
		comidaActual= unaComida
		
		}
		else{ 	}
		
}
	method darleDeComer(unAve){
		if(comidaActual != null){
		unAve.come(comidaActual)
	}
	else{game.say(self, "no tengo comida")}
	}
}
	