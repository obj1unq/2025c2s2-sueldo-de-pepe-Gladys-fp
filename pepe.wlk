// buenas profes, este ejercicio aun no lo he terminado ya que siento que no estoy llendo por un buen camino.
//lo estoy subiendo al repositorio para guardar los cambios, y para que puedan hacerme las correcciones necesarias. 

object pepe{
    var sueldo = 0
    var faltas = 0
    var bonoPresentismo = 0
    var bonoResultados = 0
    method faltas(cantidadFaltas){
        faltas = faltas + cantidadFaltas
    }
    method faltas() = faltas

    method sueldoNetoCategoria(categoria){
        sueldo = categoria.sueldoNeto()
        return sueldo
    }
    method sueldo() {
        return sueldo
    }

    method bonoPresentismo(){
        bonoPresentismo = presentismo.bonoNormal(faltas) + presentismo.bonoAjuste(faltas) + presentismo.bonoDemagogico(sueldo)
        return bonoPresentismo
    }
    method bonoResultados(){
        bonoResultados = resultados.porcentaje(sueldo) + resultados.montoFijo() 
        return bonoResultados
        

    }
}
//-----------------BONOS-----------------
object resultados{
    const porcentaje = 0.1
    const montoFijo = 800
    var bono = 0
    method porcentaje(sueldo){
        bono = sueldo * porcentaje + sueldo
        return bono
    }
    method montoFijo() = montoFijo   

}
object presentismo{
    method bonoNormal(faltas){
        if (faltas == 0) { 
           return  2000
        }else if (faltas == 1){
            return 1000
        }else{
            return 0
        } 
    }

    method bonoAjuste(faltas){
        if (faltas == 0) { 
           return  100
        }else{
            return 0
        } 
    }

    method bonoDemagogico(sueldo){
        if (sueldo < 18000) { 
           return  500
        }else{
            return 300
        } 
    }

}
// --------------CATEGORIAS------------
object gerente {
    const sueldoNeto = 15000 
    method sueldoNeto() {
        return  sueldoNeto
    }

}
object cadete {
  const sueldoNeto = 20000 
  method sueldoNeto() = sueldoNeto
  
}