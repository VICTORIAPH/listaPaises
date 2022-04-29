//
//  Covid_Manager.swift
//  EstadisticaCovid19
//
//  Created by Mac8 on 25/04/22.
//

import Foundation
protocol covidManagerDelegado {
    func huboError(cualError: String)
    func actualizar(paises: [CovidDatos?])
}

struct CovidManager {
    var delegado: covidManagerDelegado?
    
    
    func buscarEstadisticas()  {
        let urlString =  "https://corona.lmao.ninja/v3/covid-19/countries/"
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            
            let tarea = session.dataTask(with: url){datos, respuesta, error in
                //si hubo error
                if error != nil{
                    print("Error al buscar datos: \(error?.localizedDescription)")
                    
                }
                if let datosSeguros = datos {
                    print("DatosSeguros")
                    print(datosSeguros)
                    
                    if let listaPaises = self.parsearJSON(datosCovid: datosSeguros)
                    {
                        delegado?.actualizar(paises: listaPaises)
                       print("Lista paises: \(listaPaises.count)")
                        
                    }
                }

               
            }
            tarea.resume()
            
        }
    }
    
    //retorno un array de covid datos
    func parsearJSON(datosCovid: Data) -> [CovidDatos?] {
        let decodificador = JSONDecoder()
        do{
            let datosDecodificados: [CovidDatos] = try decodificador.decode([CovidDatos].self, from: datosCovid)
            //crear un array de paises de tipo covid datos
            
            let paises: [CovidDatos] = datosDecodificados
             return paises
            
        }
    }
}
