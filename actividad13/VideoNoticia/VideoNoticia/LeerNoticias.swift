//
//  LeerNoticias.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import Foundation


class LeerNoticias{


func getNoticias(termino: @escaping (_ datos:[String])->()){
    let liga = "https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key=Sx9RL5EGWchG54cYRuwpTXR79p7lioTw"
    let myURL = URL (string: liga)
    let req = NSMutableURLRequest(url: myURL!)
    req.httpMethod = "GET"
    
    _ = URLSession.shared.dataTask(with: req as URLRequest) { dato, response, error in
        var titulos: [String] = []
        let arrayOpt: [NSDictionary] = []
        
        do{
            let resultado = try JSONSerialization.jsonObject(with: dato!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
        
            for valor in (resultado["results"] as? [NSDictionary] ?? arrayOpt){
              titulos.append(valor["title"] as! String)
            }
            DispatchQueue.main.async {
                termino(titulos)
         }
        }catch{
          print("Error en lectura")
        }
    }.resume()
    }
}


