//
//  APIService.swift
//  minimal-mvvm-swift-starter
//
//  Created by Shaun Farrell on 12/02/2018.
//

import Foundation

protocol APIServiceProtocol {
    func fetchResults( complete: @escaping ( _ success: Bool, _ results: [Result] )->() )
}

class APIService: APIServiceProtocol {

    //Simulate an async network call
    func fetchResults( complete: @escaping ( _ success: Bool, _ results: [Result] )->() ) {
        DispatchQueue.global().async {
            sleep(2)
            complete( true, [Result(description: "Arsenal won 4-2")] )
        }
    }
    
}
