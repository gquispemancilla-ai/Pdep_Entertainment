/* Entradas
Compuestas por una banda y la fecha en la que toca. Si bien su precio base es 1000, al precio al público se le tiene que agregar el impuesto que fije 
la productora (el cual es el mismo para todas las entradas y podría variar cuando la productora quiera). 
*/
class Entrada{
    var banda
    var property fechaQueToca
    var productora
    method precioFinal() = 1000 + productora.impuesto()


}
/* Asistentes
*/
class Asistente{
        var tipoAbono
        const historialDeEntradas = []
        var dineroDisponible
        method saldoDisponible() = dineroDisponible > 0
//        method puedeComprarEntrada()= self.saldoDisponible()
        method comprarEntrada(unaEntrada)  
        {
            if(self.saldoDisponible())
            {

                 dineroDisponible= self.montoAPagar(unaEntrada)
                 historialDeEntradas.add(unaEntrada)

            }
            return 0
        }
        method montoAPagar(unaEntrada) = unaEntrada.precioFinal() - unaEntrada.precioFinal()*tipoAbono.descuento()
        method descuento()
        method entradasQueSaco(anioPasado, anioActual) = historialDeEntradas.filter({unaEntrada =>unaEntrada.})
        method nombreDebandas() = historialDeEntradas.map({unaEntrada => unaEntrada.nombre()})

}
class Fan{

}
class Vip{
    
}
/*
class Fan inherits Asistente{
    override method descuento() = 0
}
class Vip inherits Asistente{
    override method descuento() 
}
*/

class Banda{
    var nombre
    var property cannon = 1000000
    method presupuesto() = cannon + self.precioExtra()
    method popularidad()
    method precioExtra()

}
class BandaDeRock inherits Banda{
    var cantidadDeGuitarras
    override method precioExtra() = 10000
    override method popularidad() = 100*cantidadDeGuitarras
}
class BandaDeTrap inherits Banda{
    var tieneHielo
    override method precioExtra() = 0
    override method popularidad(){
        if(tieneHielo){
            return 1000
            cannon = cannon*1000
        }
        return 0
    }
    override method cannon() = 
}
class BandaDeIndies inherits Banda{
    var cantidadDeInstrumentos
    override method precioExtra() = 500*cantidadDeInstrumentos
    method tamanioDeNombre() = nombre.size()
    override method popularidad() = 3.14*self.tamanioDeNombre()
}


object productora{
    var property impuesto
}
