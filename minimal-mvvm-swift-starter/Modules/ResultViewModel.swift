//
//  ResultViewModel.swift
//  minimal-mvvm-swift-starter
//
//  Created by Shaun Farrell on 12/02/2018.
//

import Foundation

class ResultViewModel {
    
    let apiService: APIServiceProtocol
    
    private var resultsList: [Result] = [Result]() {
        didSet {
            self.reloadLabelView?()
        }
    }
    
    var reloadLabelView: (()->())?

    init( apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
    }
    
    func initFetch() {
        apiService.fetchResults { [weak self] (success, results) in
            if success {
                self?.resultsList = results
            }
        }
    }
    
    func getFirstResult() -> Result {
        return resultsList[0]
    }

}

