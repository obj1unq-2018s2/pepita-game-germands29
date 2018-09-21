import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = null

	var property posicion = game.at(3,3)
	method imagen() {
		
		 if( energia < 10){ return "pepitaCanchera.png"} 
		 if(energia > 100) {return "pepita-gorda-raw.png"}
		 return "pepita.png"
		 }

	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())}
				
				else{ game.say(self ,"ya estoy en ciudad")	}

			// TODO Estás modificando la ciudad en todos los casos, sin importar si pudo volar o no.
			ciudad = unaCiudad
		}
	
	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO Evitá las repeticiones, el cálculo de la energia está dos veces.
		if(energia - self.energiaParaVolar(posicion.distance(nuevaPosicion)) < 0){
			game.say(self, "dame de comer")
			
		}
		else{
		energia= energia - self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
		}	
	}
	
	method teEncontro(alguien){
		alguien.darleDeComer(self)
		
	}

}
