import socios.*

class Actividad {
	method idiomasUtilizados()
	method requiereEsfuerzo()
	method sirveParaBroncearse()
	method diasRequeridos()
}


class Viaje inherits Actividad {
	const idiomas = #{}
	
	override method idiomasUtilizados() = idiomas
	method esInteresante() = 1 < idiomas.size()
}

class ViajeDePlaya inherits Viaje{
	const largoDePlaya
	
	 override method diasRequeridos() = largoDePlaya / 500
	override method requiereEsfuerzo() = largoDePlaya > 1200
	override method sirveParaBroncearse() = true
}

class ExcursionACiudad inherits Viaje {
	const atraccionesAVisitar
	
	override method diasRequeridos() = atraccionesAVisitar / 2
	override method requiereEsfuerzo() = atraccionesAVisitar.between(5,8)
	override method sirveParaBroncearse() = false
	override method esInteresante() = super() or atraccionesAVisitar == 5
}

class ExcursionACiudadTropical inherits ExcursionACiudad {
	override method diasRequeridos() = super() + 1 
	override method sirveParaBroncearse() = true
}

class SalidaDeTrekking inherits Viaje {
	const kilometrosDeSendero
	const diasDeSolAnual
	
	override method diasRequeridos() = kilometrosDeSendero/50
	override method requiereEsfuerzo() = kilometrosDeSendero > 80
	override method sirveParaBroncearse() = diasDeSolAnual > 200 or diasDeSolAnual.between(100,200) and kilometrosDeSendero > 120
	override method esInteresante() = super() or diasDeSolAnual > 140
}

class ClasesDeGimnasia inherits Actividad{
	override method idiomasUtilizados() = 'español'
	override method requiereEsfuerzo() = true
	override method sirveParaBroncearse() = false
	override method diasRequeridos() = 1
}

