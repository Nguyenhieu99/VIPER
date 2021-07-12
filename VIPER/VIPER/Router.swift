//
//  Router.swift
//  VIPER
//
//  Created by Nguyễn Hiếu on 12/07/2021.
//

import Foundation
import UIKit

//Object
//Entry point
typealias EntryPoint = AnyView & UIViewController
protocol AnyRouter {
    var view: EntryPoint? { get }
    
    
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    var view: EntryPoint?
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        // Assign VIP
        
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        router.entry = view as? EntryPoint
        
        
        
        return router
    }
}
