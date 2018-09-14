object knightRider {

	method peso() = 500 // kg

	method peligrosidad() = 10

}

object bumbleBee {

	var property esAuto = true

	method peso() = 800

	method peligrosidad() = if (esAuto) 15 else 30

}

object paqueteDeLadrillos {

	var property peso = cantidadDeLadrillos * 2
	var property cantidadDeLadrillos = 1

	method peligrosidad() = 2

}

object arenaAGranel {

	var property peso

	method peligrosidad() = 1

}

object bateriaAntiAerea {

	var property estaCargada = true

	method peso() = if (estaCargada) 300 else 200

	method peligrosidad() = if (estaCargada) 100 else 0

}

object contenedorPortuario {

	const property cosas = [ knightRider, bumbleBee ]
	const pesoVacio = 100
	method peligrosidad() = if (cosas.isEmpty()) 0 else cosas.max{ cosa => cosa.peligrosidad() }.peligrosidad()

	method peso() = cosas.sum{ cosa => cosa.peso() } + pesoVacio

	method agregarCosa(cosa) {
		cosas.add(cosa)
	}

}

object residuosRadioactivos {

	var property peso

	method peligrosidad() = 200

}

object embalajeDeSeguridad {

	var property objeto

	method peso() = objeto.peso()

	method peligrosidad() = objeto.peligrosidad() / 2

}

object deposito {

	var property cosas = [ knightRider, bumbleBee ]

	method cargarCamion(camion) {
		cosas.forEach{ cosa => camion.cargar(cosa)}
	}

}

