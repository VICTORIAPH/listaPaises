//
//  CovidDatos.swift
//  EstadisticaCovid19
//
//  Created by Mac8 on 25/04/22.
//

import Foundation



struct CovidDatos: Decodable{
    let country: String?
    let active: Double?
    let countryInfo: CountryInfo?
    let cases: Double?
}

struct CountryInfo: Decodable {
    let flag: String?
}
