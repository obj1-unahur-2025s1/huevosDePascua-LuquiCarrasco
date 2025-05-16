object huevoRepostero {
    method calorias() = 750
    method esChocoLeche() = false
    method esChocoBlanco() = true
    method esChocoAmargo() = false
}

object huevoMixto {
  method calorias() = 900
   method esChocoLeche() = true
    method esChocoBlanco() = true
    method esChocoAmargo() = false

}

object conejo {
    var peso = 0
    method calorias() = peso * 10
    method peso(unPeso) {
        peso = unPeso
    }
     method esChocoLeche() = false
    method esChocoBlanco() = false
    method esChocoAmargo() = true
}

object blisterHuevitos {
    var cantHuevos = 0
    method esChocoLeche() = true
    method esChocoBlanco() = cantHuevos.div(5) > 0
    method esChocoAmargo() = false
    method calorias() = cantHuevos * 100 + cantHuevos.div(5) * 150
    method cantHuevos(unaCantidad) {
        cantHuevos = unaCantidad
    } 
}

object matrioshka {
    var  calorias = 3000
    var huevoInterno = huevoRepostero
    var tipoDeDecoracion = arbol
    method calorias() = calorias + huevoInterno.calorias() + tipoDeDecoracion.calorias()
    method cambiarDecoracion(unaDeco){
        tipoDeDecoracion = unaDeco
    } 
}

object arbol {
    method calorias() = 150
}

object flor {
    var property petalos = 0
    method calorias() = petalos * 100
}

