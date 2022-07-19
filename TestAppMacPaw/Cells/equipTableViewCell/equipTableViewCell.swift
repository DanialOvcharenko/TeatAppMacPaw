//
//  equipTableViewCell.swift
//  TestAppMacPaw
//
//  Created by Mac on 07.07.2022.
//

import UIKit

class equipTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func cofigure(with equip: equipmentModel) {
        
        let day = equip.day
        let date = equip.date
        
        label1.text = "day # \(day)"
        label2.text = "(\(date))"
    }
}
