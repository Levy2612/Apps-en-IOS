import UIKit

var str = "Actividad 6"



infix operator ^
postfix operator |>

func ^ (left:Float, right: Float) -> Float {
    return pow(left, right)
}

5.0^2.0

var arr = [2,5,3,4]
prefix operator |>
prefix func |> (arr:Array<Int>)->Array<Int>{
    return arr.sorted()
}
|>arr

class numeros {
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    
    subscript(idx:Int) -> Int {
        get {
            return valores[idx]
        }
        set(nuevoValor) {
            valores[idx] = nuevoValor * 2
        }
    }
}

var numero = numeros(v:arr)

numero[0] = 5
numero[1] = 2
numero[2] = 7
numero[3] = 8

numero.valores

struct Enemigo {
    var posicion:CGPoint
    init(e:CGPoint){
        self.posicion = e
    }
    
    subscript() -> CGPoint {
        get {
            return posicion
        }
    }
}

var enemigo = Enemigo(e:CGPoint(x:5, y:8))
enemigo.posicion
enemigo.posicion = CGPoint(x: 6, y: 7)
enemigo.posicion

var dic = ["A":1, "B":2, "C":3]

func ExisteValor(idx:String){
    guard let existe = dic[idx] else {
        print("No existe")
        return
    }
    print("Si existe \( existe)")
}

ExisteValor(idx: "C")
