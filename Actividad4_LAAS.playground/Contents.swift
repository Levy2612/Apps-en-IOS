import UIKit


var datos = [3,6,9,2,4,1]
for i in datos {
    if i < 5 {
        print ("Este numero es menor a 5 = \(i)")
    }
      
}




func suma(a:Int, b:Int) -> Int {
    return a + b
}

let a = 4
let b = 6

print(" La Suma de \(a) + \(b) = \(suma(a:a,b:b))");


func Potencia(x:Int,y:Int) {
    
    let P = pow(6,y)
    print(" La potencia de \(x) a la \(y) es \(P)");
}

Potencia(x:6,y:6)


enum Meses{
    case enero
    case febrero
    case marzo
    case abril
    case mayo
    case junio
    case julio
    case agosto
    case septiembre
    case octubre
    case noviembre
    case diciembre
}

var queNumEs: Meses
queNumEs = .febrero

switch queNumEs{
case.enero:
    print("El mes No. 1 Enero")
case .febrero:
    print("El mes No. 2 Febrero")
case .marzo:
    print("El mes No. 3 Marzo")
case .abril:
    print("El mes No. 4 Abril")
case .mayo:
    print("El mes No. 5 Mayo")
case .junio:
    print("El mes No. 6 Junio")
case .julio:
    print("El mes No. 7 Julio")
case .agosto:
    print("El mes No. 8 Agosto")
case .septiembre:
    print("El mes No. 9 Septiembre")
case .octubre:
    print("El mes no. 10 Octubre")
case .noviembre:
    print("El mes No. 11 Noviembre")
case .diciembre:
    print("El mes No. 12 Diciembre")
}

