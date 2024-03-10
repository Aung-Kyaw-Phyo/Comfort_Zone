//
//  OnboardingScreenViewController.swift
//  Comfort_Zone
//
//  Created by Aung Kyaw Phyo on 01/03/2024.
//

import UIKit

class OnboardingScreenViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: User Interaction - Actions & Targets
    @IBAction func clickedOnButton(_ sender: UIButton) {
        
    }

}

// MARK: - UICollectionViewDelegate
extension OnboardingScreenViewController: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource
extension OnboardingScreenViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
