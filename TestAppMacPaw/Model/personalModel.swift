
import Foundation

class personalModel : Codable {
    var date: String!
    var day: Int!
    var personnel: Int!
    var personnel_2: String
    var POW: Int!
    
    
    enum CodingKeys: String, CodingKey {
        case date = "date"
        case day = "day"
        case personnel = "personnel"
        case personnel_2 = "personnel*"
        case POW = "POW"
    }
    
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try values.decodeIfPresent(String.self, forKey: .date) ?? ""
        self.day = try values.decodeIfPresent(Int.self, forKey: .day) ?? 0
        self.personnel = try values.decodeIfPresent(Int.self, forKey: .personnel) ?? 0
        self.personnel_2 = try values.decodeIfPresent(String.self, forKey: .personnel_2) ?? ""
        self.POW = try values.decodeIfPresent(Int.self, forKey: .POW) ?? 0
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(date, forKey: .date)
        try container.encode(day, forKey: .day)
        try container.encode(personnel, forKey: .personnel)
        try container.encode(personnel_2, forKey: .personnel_2)
        try container.encode(POW, forKey: .POW)
    }
    
}



