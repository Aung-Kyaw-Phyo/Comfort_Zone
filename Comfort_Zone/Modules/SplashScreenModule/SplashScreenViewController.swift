//
//  SplashScreenViewController.swift
//  Comfort_Zone
//
//  Created by Aung Kyaw Phyo on 01/03/2024.
//

import UIKit
import Lottie

class SplashScreenViewController: UIViewController {

    // MARK: Outles
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var animationView: LottieAnimationView!
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingAnimation()
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(showOnboardingScreen), userInfo: nil, repeats: false)
    }
    
    // MARK: Splash and Onboarding - Navigation
    @objc func showOnboardingScreen() {
        let onboardingStoryboard = UIStoryboard(name: "OnboardingScreen",
                                                bundle: nil).instantiateViewController(identifier: "OnboardingScreenViewController") as! OnboardingScreenViewController
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let sceneDelegate = windowScene.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = onboardingStoryboard
            UIView.transition(with: window,
                              duration: 0.25,
                              options: .transitionCrossDissolve,
                              animations: nil,
                              completion: nil)
        }
    }
    
    // MARK: Lottie Animation View
    private func loadingAnimation() {
        let animation = LottieAnimation.named("CZLoadingBar")
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.7
        view.addSubview(animationView)
        animationView.play()
    }
}
