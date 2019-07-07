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
    
    public func getPeoples(completionHandler: @escaping ((_ peoples: Any) -> Void)) {
        let route = self.api.ENDPOINT + EndpointRoutes.PEOPLE.rawValue
        
        self.api.getRequest(route: route, headers: self.api.headers) { (statusCode, data) in
            guard let d = data, statusCode < 300 else { return }
            
            completionHandler(d)
        }
    }
}
