import wollok.game.*


	
object musica{
	var property ost = game.sound("StageTheme.mp3")
	method play(){
		ost.shouldLoop(true)
		game.schedule(500, { ost.play()} )
	}
	method pause(){
		ost.pause()
	}
	method resume(){
		ost.resume()
	}
}


class Pared{
	var property position
	const property image 
	const property lugarLibre = false
}

class Direccion {
	method siguiente(position)
}
object izquierda inherits Direccion { 
	override method siguiente(position) = position.left(1) 
}
object derecha inherits Direccion { 
	override method siguiente(position) = position.right(1) 
}
object abajo inherits Direccion { 
	override method siguiente(position) = position.down(1) 
}
object arriba inherits Direccion { 
	override method siguiente(position) = position.up(1) 
}