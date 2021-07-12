//
//  Presentor.swift
//  VIPER
//
//  Created by Nguyễn Hiếu on 12/07/2021.
//

import Foundation

//Object
//Protocol
//Ref to interactor, router, view

protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
    
}

class UserPresenter: AnyPresenter {
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        
    }
    
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
}
