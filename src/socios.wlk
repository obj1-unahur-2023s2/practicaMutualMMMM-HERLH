class Socio {
	const actividadesRealizadas = []
	const idiomas = []
	const actividadesMaximas
	const edad
	
	
	method esAdoradorDelSol() = actividadesRealizadas.all({a=>a.sirveParaBroncearse()})
	method actividadesEsforzadas() = actividadesRealizadas.filter({a=>a.requiereEsfuerzo()})
	method realizarActividad(unaActividad) {
		if(actividadesRealizadas.size()==actividadesMaximas){
			self.error('Ya realizo el maximo de actividades')
		}
		actividadesRealizadas.add(unaActividad)
	}
}

