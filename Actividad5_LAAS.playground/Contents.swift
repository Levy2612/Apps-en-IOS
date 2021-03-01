import UIKit

var str = "Actividad 5"


class Persona {
    
    var nombre = ""
    var pasos = 0
    
    init(nombre:String, pasos:Int)
      {
          self.nombre = nombre
          self.pasos = pasos
      }
    func Caminar(pasos:Int )
    {
        self.pasos = pasos
    }
    func Hablar(mensaje:String)
    {
        self.nombre = mensaje
    }
}
var miguel = Persona (nombre: "", pasos: 50)
miguel.Caminar(pasos:50)
miguel.Hablar(mensaje:"Miguel")

print("Hola  \( miguel.nombre) mucho gusto")
print ("Caminaste \( miguel.pasos) pasos")


struct Pantalla
{
    var alto:Int
    var ancho:Int
    
    init(alto:Int, ancho:Int){
        self.alto = alto
        self.ancho = ancho
    }
    func CualTamano() -> (Int, Int){
        return (self.alto, self.ancho)
    }
}
var tamano = Pantalla(alto:55, ancho:85)

tamano.CualTamano()




extension Int{
    
    func horas() -> Int{
        return self*60*60
    }
}

1.horas()


var Semana = ["", "Domingo = 1 ", "Lunes = 2", "Martes = 3", "Miercoles = 4", "Jueves = 5 ", "Viernes = 6", "Sabado = 7"]

extension String {
    var Dias: String {
        return self
    }
}
print ("\(Semana[7].Dias)")

 let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
 var existe:Int?

existe = dias["CDMX"]
existe = dias["PUE"]

if dias["MTY"] != nil{
    print("Si existe")
}else{
    print("No existe")
}


















