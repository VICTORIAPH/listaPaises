//
//  CeldaPaisTableViewCell.swift
//  EstadisticaCovid19
//
//  Created by Mac8 on 29/04/22.
//

import UIKit

class CeldaPaisTableViewCell: UITableViewCell {
    
    @IBOutlet weak var banderaPaisImage: UIImageView!

    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var casosActivos: UILabel!
    @IBOutlet weak var casosRecuperados: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // redondear imagen
        banderaPaisImage.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
