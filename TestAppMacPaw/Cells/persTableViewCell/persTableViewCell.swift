//
//  persTableViewCell.swift
//  TestAppMacPaw
//
//  Created by Mac on 05.07.2022.
//

import UIKit

class persTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func cofigure(with person: personalModel) {
        
        /*
        dateLabel.text = person.date ?? "No date"
        
        guard let day = person.day else { return }
        guard let personCount = person.personnel else { return }
        self.persLabel.text = "Day \(day): destroyed \(personCount) terrorists"
        
        guard let pow = person.POW else { return }
        todayLabel.text = "Prisoners of war - \(pow)"
        */
        
        guard let day = person.day else { return }
        let date = person.date ?? "No date"
        dateLabel.text = "\(day) day of war"
        
        date2Label.text = "(\(date))"
    }
    
}
