//
//  OnBoardingRouter.swift
//  Yummie
//
//  Created by Mahmoud Sherbeny on 05/10/2021.
//

import Foundation
import UIKit

protocol OnBoardingRouterProtocol {
    var coordinator: Coordinator { get }
    func setAppToMainScreen()
}

class OnBoardingRouter: OnBoardingRouterProtocol {
    
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func setAppToMainScreen() {
        
    }
}
