import UIKit

var str = "Actividad 7"


var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int = 0

for i in costo_referencia
{
    costo_referencia[indice] = i*0.16
    indice += 1
}



func impuesto(arreglo:[Float])->[Float]
{
    
    var resultado:[Float] = []
    
    for i in arreglo
    {
        
        resultado.append(i*0.16)
    }
    return resultado
}
    
impuesto(arreglo: costo_referencia)
print(costo_referencia)



let Suma = {(x:Int, y:Int)->Int in return x+y}
    
    func SumaTres(a:Int, b:Int, c:Int)->Int{
        return Suma(a,b)+c
    }

    SumaTres(a: 8, b: 3, c: 7)



func Cambio ( var1: Int, var2: Int) -> (Int,Int) {
   var var1 = var1
   var var2 = var2
   let temp = var1
   var1 = var2
   var2 = temp
   return (var1,var2)
}
var variable1=5
var variable2=8
Cambio(var1: variable1, var2: variable2)
print(variable1, variable2)





extension Array{
    func transformar<Tra> (inicial:Tra, acumula:(Tra, Element)->Tra)->Tra{
        var respuesta:Tra = inicial
        for valor in self{
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}

var datos = [3,7,9,2]
datos.transformar(inicial: 0){(a, b) in a + b}






let precios = [4.2, 5.3, 8.2, 4.5]
var impuesto = precios.map{i in return i + (i*0.16)}
impuesto






var precio_menor = impuesto.filter{i in i > 6}
precio_menor

