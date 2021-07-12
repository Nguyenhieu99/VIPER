//
//  Interactor.swift
//  VIPER
//
//  Created by Nguyễn Hiếu on 12/07/2021.
//

import Foundation

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
}

class UserInteractor: AnyInteractor {

    var presenter: AnyPresenter?
    
    func getUsers() {
        
    }
    
    
}
