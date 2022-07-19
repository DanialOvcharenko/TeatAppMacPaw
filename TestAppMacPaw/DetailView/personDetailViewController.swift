//
//  personDetailViewController.swift
//  TestAppMacPaw
//
//  Created by Mac on 05.07.2022.
//

import UIKit

class personDetailViewController: UIViewController {

    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var powLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var people: personalModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configure()
        
        image.layer.cornerRadius = image.bounds.height / 5
    }
    
    private func configure() {
        
        guard let day = people?.day else { return }
        dayLabel.text = "war day number \(day)"
        
        guard let number = people?.personnel else { return }
        numberLabel.text = "Total destroyed: \(number) orcs"
        
        guard let pow = people?.POW else { return }
        powLabel.text = "\(pow) prisoners of war for this day"
        
    }
}
