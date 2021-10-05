//
//  OnBoardingVC.swift
//  Yummie
//
//  Created by Mahmoud Sherbeny on 05/10/2021.
//

import UIKit
import CHIPageControl

class OnBoardingVC: BaseWireFrame<OnboardingViewModel, OnBoardingRouterProtocol> {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pagerController: CHIPageControlJaloro!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    override func bind(viewModel: OnboardingViewModel) {
        
    }
    
    func setup() {
        self.setupPageController()
    }
    
    func setupCollectioView() {
        self.collectionView.isPagingEnabled = true
    }
    
    func setupPageController() {
        self.pagerController.numberOfPages = 4
        self.pagerController.progress = 2
    }
    
    @IBAction func nextTappedButton(_ sender: UIButton) {
        
    }
}

extension OnBoardingVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
}
