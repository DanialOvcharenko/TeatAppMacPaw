//
//  personalDataLoader.swift
//  TestAppMacPaw
//
//  Created by Mac on 05.07.2022.
//

import Foundation

public class personalDataLoader {
    
    @Published var personalData: [personalModel] = []
    
    init() {
       load()
    }
    
    func load() {
        
        if let fileLacation = Bundle.main.url(forResource: "russia_losses_personnel", withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: fileLacation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([personalModel].self, from: data)
                
                self.personalData = dataFromJson
            
            } catch {
                print(error)
            }
        }
    }
}
