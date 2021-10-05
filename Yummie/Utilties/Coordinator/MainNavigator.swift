//
//  MainNavigator.swift
//  Yummie
//
//  Created by Mahmoud Sherbeny on 05/10/2021.
//

import Foundation
import UIKit

enum NavigatorType {
    case push
    case present
    case root
}

protocol Navigator {
    init(coordinator: Coordinator)
    associatedtype Destination
    var coordinator: Coordinator { get }
    func navigationController(for destination: Destination) -> UINavigationController?
    func viewController(for destination: Destination) -> UIViewController
    func navigate(to destination: Destination, with type: NavigatorType, by navigationController: Bool)
}

extension Navigator {
    func navigate(to destination: Destination, with type: NavigatorType, by navigationController: Bool = false) {
        var VC = self.viewController(for: destination)
        
        VC = navigationController ? UINavigationController(rootViewController: VC) : VC
        
        if let navigationController = self.navigationController(for: destination) {
            switch type {
            case .push:
                navigationController.pushViewController(VC, animated: true)
            case .present:
                navigationController.present(VC, animated: true, completion: nil)
            case .root:
                navigationController.setViewControllers([VC], animated: true)
            }
        } else {
            
        }
    }
}

class MainNavigator: Navigator {
    
    var coordinator: Coordinator
    
    enum Destination {
        case onBoarding
        case home
    }
    
    required init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigationController(for destination: Destination) -> UINavigationController? {
        if let navigationController = viewController(for: destination).navigationController {
            return navigationController
        }
        return nil
    }
    
    func viewController(for destination: Destination) -> UIViewController {
        switch destination {
        case .onBoarding:
            let viewModel = OnboardingViewModel()
            let router: OnBoardingRouterProtocol = OnBoardingRouter(coordinator: coordinator)
            return OnBoardingVC(viewModel: viewModel, router: router)
        case .home:
            return UIViewController()
        }
    }
}
