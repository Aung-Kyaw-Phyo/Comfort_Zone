//
//  OnboardingScreenCollectionViewCell.swift
//  Comfort_Zone
//
//  Created by Aung Kyaw Phyo on 08/03/2024.
//

import UIKit

class OnboardingScreenCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingScreenCollectionViewCell.self)
    
    // MARK: Outlets
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideIntroLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    
}
