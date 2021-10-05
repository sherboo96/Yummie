//
//  AppCoordinator.swift
//  Yummie
//
//  Created by Mahmoud Sherbeny on 05/10/2021.
//

import Foundation
import UIKit

protocol Coordinator {
    var main: MainNavigator { get }
}

class AppCoordinator: Coordinator {
    
    let window: UIWindow
    lazy var main: MainNavigator = {
        return .init(coordinator: self)
    }()
    
    init(window: UIWindow = UIWindow()) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    var rootViewController: UIViewController {
        self.main.viewController(for: .onBoarding)
    }
    
}
