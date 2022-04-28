//
//  ViewController.swift
//  EstadisticaCovid19
//
//  Created by Mac8 on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tablaPaises: UITableView!
    //instanceando el covidManager
    var covidManager = CovidManager()
    var listaPaises: [CovidDatos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //delegado paises
        tablaPaises.delegate = self //hace referencia al viewControler
        tablaPaises.dataSource = self
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaPaises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaPaises.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        celda.textLabel?.text = listaPaises[indexPath.row].country
        celda.detailTextLabel?.text = "Casos activos: \(listaPaises[indexPath.row].active ?? 0)"
        
        // mostramos la imagen de la api
        if let urlString = listaPaises[indexPath.row].countryInfo?.flag {
            if let imagenURL = URL(string: urlString){
                DispatchQueue.global().async {
                    guard let imagenData = try? Data(contentsOf: imagenURL) else {return}
                    
                    //crear un 
                }
            }
        }
        
        return celda
        
    }
    
    
    
}
