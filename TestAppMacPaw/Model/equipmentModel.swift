
import Foundation

class equipmentModel: Codable {
    var date: String
    var day: Int
    var aircraft: Int
    var helicopter : Int
    var tank : Int
    var aPC : Int
    var fieldArtillery : Int
    var mRL : Int
    var militaryAuto : Int
    var fuelTank : Int
    var drone : Int
    var navalShip : Int
    var antiAircraftWarfare : Int
    var specialEquipment: Int
    var mobileSRBMSystem: Int
    var vehiclesAndFuelTanks: Int
    var cruiseMissiles: Int
    
    enum CodingKeys: String, CodingKey {
        case date = "date"
        case day = "day"
        case aircraft = "aircraft"
        case helicopter = "helicopter"
        case tank = "tank"
        case aPC = "APC"
        case fieldArtillery = "field artillery"
        case mRL = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone = "drone"
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case mobileSRBMSystem = "mobile SRBM system"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(String.self, forKey: .date) ?? ""
        do {
            self.day = try container.decodeIfPresent(Int.self, forKey: .day) ?? 0
        } catch {
            if let dayValue = Int(try container.decode(String.self, forKey: .day)) {
                self.day = dayValue
            } else {
                self.day = 0
            }
        }
        self.aircraft = try container.decodeIfPresent(Int.self, forKey: .aircraft) ?? 0
        self.helicopter = try container.decodeIfPresent(Int.self, forKey: .helicopter) ?? 0
        self.tank = try container.decodeIfPresent(Int.self, forKey: .tank) ?? 0
        self.aPC = try container.decodeIfPresent(Int.self, forKey: .aPC) ?? 0
        self.fieldArtillery = try container.decodeIfPresent(Int.self, forKey: .fieldArtillery) ?? 0
        self.mRL = try container.decodeIfPresent(Int.self, forKey: .mRL) ?? 0
        self.militaryAuto = try container.decodeIfPresent(Int.self, forKey: .militaryAuto) ?? 0
        self.fuelTank = try container.decodeIfPresent(Int.self, forKey: .fuelTank) ?? 0
        self.drone = try container.decodeIfPresent(Int.self, forKey: .drone) ?? 0
        self.navalShip = try container.decodeIfPresent(Int.self, forKey: .navalShip) ?? 0
        self.antiAircraftWarfare = try container.decodeIfPresent(Int.self, forKey: .antiAircraftWarfare) ?? 0
        self.specialEquipment = try container.decodeIfPresent(Int.self, forKey: .specialEquipment) ?? 0
        self.mobileSRBMSystem = try container.decodeIfPresent(Int.self, forKey: .mobileSRBMSystem) ?? 0
        self.vehiclesAndFuelTanks = try container.decodeIfPresent(Int.self, forKey: .vehiclesAndFuelTanks) ?? 0
        self.cruiseMissiles = try container.decodeIfPresent(Int.self, forKey: .cruiseMissiles) ?? 0
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(date, forKey: .date)
        try container.encode(day, forKey: .day)
        try container.encode(aircraft, forKey: .aircraft)
        try container.encode(helicopter, forKey: .helicopter)
        try container.encode(tank, forKey: .tank)
        try container.encode(aPC, forKey: .aPC)
        try container.encode(fieldArtillery, forKey: .fieldArtillery)
        try container.encode(mRL, forKey: .mRL)
        try container.encode(militaryAuto, forKey: .militaryAuto)
        try container.encode(fuelTank, forKey: .fuelTank)
        try container.encode(drone, forKey: .drone)
        try container.encode(navalShip, forKey: .navalShip)
        try container.encode(antiAircraftWarfare, forKey: .antiAircraftWarfare)
        try container.encode(specialEquipment, forKey: .specialEquipment)
        try container.encode(mobileSRBMSystem, forKey: .mobileSRBMSystem)
        try container.encode(vehiclesAndFuelTanks, forKey: .vehiclesAndFuelTanks)
        try container.encode(cruiseMissiles, forKey: .cruiseMissiles)
    }
}

