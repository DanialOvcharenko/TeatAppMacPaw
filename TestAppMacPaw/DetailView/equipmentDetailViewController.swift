//
//  equipmentDetailViewController.swift
//  TestAppMacPaw
//
//  Created by Mac on 06.07.2022.
//

import UIKit

class equipmentDetailViewController: UIViewController {
    
    @IBOutlet weak var aircraftLabel: UILabel!
    @IBOutlet weak var tanksLabel: UILabel!
    @IBOutlet weak var helicopterLabel: UILabel!
    @IBOutlet weak var APCLabel: UILabel!
    @IBOutlet weak var fieldArtileryLabel: UILabel!
    @IBOutlet weak var mRLLabel: UILabel!
    @IBOutlet weak var militatyAutoLabel: UILabel!
    @IBOutlet weak var fuelTankLabel: UILabel!
    @IBOutlet weak var DroneLabel: UILabel!
    @IBOutlet weak var navalShipLabel: UILabel!
    @IBOutlet weak var antiAirLabel: UILabel!
    
    @IBOutlet weak var imageTB2: UIImageView!
    
    @IBOutlet weak var specEquipLabel: UILabel!
    @IBOutlet weak var SRBMLabel: UILabel!
    @IBOutlet weak var vehiclesFTLabel: UILabel!
    @IBOutlet weak var cruiseMissilesLabel: UILabel!
    
    var equip: equipmentModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        imageTB2.layer.cornerRadius = imageTB2.bounds.height / 6

        aircraftLabel.change()
        tanksLabel.change()
        helicopterLabel.change()
        APCLabel.change()
        fieldArtileryLabel.change()
        mRLLabel.change()
        militatyAutoLabel.change()
        fuelTankLabel.change()
        DroneLabel.change()
        navalShipLabel.change()
        antiAirLabel.change()
        specEquipLabel.change()
        SRBMLabel.change()
        vehiclesFTLabel.change()
        cruiseMissilesLabel.change()
        
        self.title = "Day results"
    }
    
    private func configure() {
        
        guard let aircraft = equip?.aircraft else { return }
        aircraftLabel.text = "Aircraft: \(aircraft)"
        
        guard let tank = equip?.tank else { return }
        tanksLabel.text = "Tanks: \(tank)"
        
        guard let helicopter = equip?.helicopter else { return }
        helicopterLabel.text = "Helicopters: \(helicopter)"
        
        guard let aPC = equip?.aPC else { return }
        APCLabel.text = "APCs: \(aPC)"
        
        guard let fieldArtillery = equip?.fieldArtillery else { return }
        fieldArtileryLabel.text = "Field artillery: \(fieldArtillery)"
        
        guard let mRL = equip?.mRL else { return }
        mRLLabel.text = "mRLs: \(mRL)"
        
        guard let militaryAuto = equip?.militaryAuto else { return }
        militatyAutoLabel.text = "Military autos: \(militaryAuto)"
        
        guard let fuelTank = equip?.fuelTank else { return }
        fuelTankLabel.text = "Fuel tanks: \(fuelTank)"
        
        guard let drone = equip?.drone else { return }
        DroneLabel.text = "Drones: \(drone)"
        
        guard let navalShip = equip?.navalShip else { return }
        navalShipLabel.text = "Naval ships: \(navalShip)"
        
        guard let antiAir = equip?.antiAircraftWarfare else { return }
        antiAirLabel.text = "Anti-aircraft warfare: \(antiAir)"
        
        guard let specEquip = equip?.specialEquipment else { return }
        specEquipLabel.text = "Spec. equipment: \(specEquip)"
        
        guard let mobileSRBMSystem = equip?.mobileSRBMSystem else { return }
        SRBMLabel.text = "SRBMs: \(mobileSRBMSystem)"
        
        guard let vehiclesAndFuelTanks = equip?.vehiclesAndFuelTanks else { return }
        vehiclesFTLabel.text = "Vehicles and FTs: \(vehiclesAndFuelTanks)"
        
        guard let cruiseMissiles = equip?.cruiseMissiles else { return }
        cruiseMissilesLabel.text = "Cruise missiles: \(cruiseMissiles)"
    }
}

extension UILabel {
    func change() {
        self.layer.cornerRadius = self.bounds.height / 3
        self.clipsToBounds = true
    }
}




