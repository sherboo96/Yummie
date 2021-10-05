//
//  AppDelegate.swift
//  Yummie
//
//  Created by Mahmoud Sherbeny on 05/10/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        self.setTheProjectRoot()
        return true
    }
    
    func setTheProjectRoot() {
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
    }
}

