//
//  equipmentDataLoader.swift
//  TestAppMacPaw
//
//  Created by Mac on 05.07.2022.
//

import Foundation

public class equipmentDataLoader {
    
    @Published var equipmentData = [equipmentModel]()
    
    init() {
       load()
    }
    
    func load() {
        
        if let fileLacation = Bundle.main.url(forResource: "russia_losses_equipment", withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: fileLacation)
                let jsonDecoder = JSONDecoder()
                let string = String(data: data, encoding: .utf8) ?? ""
                let new_string = string.replacingOccurrences(of: "NaN", with: "null")
                let new_data = new_string.data(using: .utf8) ?? Data()
                let dataFromJson = try jsonDecoder.decode([equipmentModel].self, from: new_data)
                
                self.equipmentData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
}
