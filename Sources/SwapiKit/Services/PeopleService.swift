//
//   _____             _    _
//  |  __ \           | |  | |
//  | |  | | __ _ _ __| | _| | ___ __ _   _  ___
//  | |  | |/ _` | '__| |/ / |/ / '__| | | |/ _ \
//  | |__| | (_| | |  |   <|   <| |  | |_| |  __/
//  |_____/ \__,_|_|  |_|\_\_|\_\_|   \__, |\___|
//                                     __/ |
//                                    |___/
//
//  PeopleService.swift
//  
//
//  Created by Pierre on 07/07/2019.
//

import Foundation

public class PeopleService: NSObject {
    let mode: Mode = .full
    let api: APIService = APIService.shared
    
    public func getPeoples(completionHandler: @escaping ((_ peoples: Array<PeopleJSON>) -> Void)) {
        let route = self.api.ENDPOINT + EndpointRoutes.PEOPLE.rawValue
        
        self.api.getRequest(route: route, headers: self.api.headers) { (statusCode, data) in
            guard let d = data, statusCode < 300 else { return }
            
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: d, options: .prettyPrinted)
                let decoder = JSONDecoder()
                let peopleResult = try decoder.decode(PeopleResult.self, from: jsonData)
            
                completionHandler(peopleResult.results)
            } catch {
            
            }
        }
    }
}

internal class PeopleResult: NSObject, Decodable {
    var count: String
    var next: String?
    var previous: String?
    var results: [PeopleJSON]
    
    init(count: String, next: String?, previous: String?, results: [PeopleJSON]) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }
}
