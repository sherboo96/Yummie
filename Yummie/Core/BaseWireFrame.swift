//
//  BaseWireFrame.swift
//  Yummie
//
//  Created by Mahmoud Sherbeny on 05/10/2021.
//

import Foundation
import UIKit

class BaseWireFrame<ViewModel, ViewRouter>: UIViewController {
    let viewModel: ViewModel!
    let router: ViewRouter
    
    init(viewModel: ViewModel, router: ViewRouter) {
        self.viewModel = viewModel
        self.router = router
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bind(viewModel: viewModel)
    }
    
    func bind(viewModel: ViewModel) {
        preconditionFailure("MVVM method 'bind' must be overriden for controller : \(String(describing: type(of: self)))")
    }
    
}
