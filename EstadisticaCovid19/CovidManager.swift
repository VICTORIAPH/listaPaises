//
//  CovidManager.swift
//  EstadisticaCovid19
//
//  Created by Mac8 on 25/04/22.
//

import Foundation
protocol covidManagerDelegado {
    func actualizar()
}

struct CovidManager {
    var delegado: covidManagerDelegado?
    
    func buscarEstadisticas()  {
        let urlString =  "https://corona.lmao.ninja/v3/covid-19/countries/"
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let tarea = session.data
        }
    }
}
