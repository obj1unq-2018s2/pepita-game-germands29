import roque.*
import pepita.*

object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	method teEncontro(alguien){
		alguien.encuentraComida(self)
		game.removeVisual(self)
	method aparecer(unaPosicion){
		game.addVisualIn(self, unaPosicion)
	}
	
}
object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	method teEncontro(alguien){
		alguien.encuentraComida(self)
		game.removeVisual(self)
	method aparecer(unaPosicion){
			game.addVisualIn(self, unaPosicion)
	}
	
	
	
}
