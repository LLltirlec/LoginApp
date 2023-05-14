//
//  TabBarController.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 13.05.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var bounceAnimation: CAKeyframeAnimation = {
        let bounceAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        bounceAnimation.values = [1.0, 1.1, 0.9, 1.02, 1.0]
        bounceAnimation.duration = TimeInterval(0.3)
        bounceAnimation.calculationMode = CAAnimationCalculationMode.cubic
        return bounceAnimation
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        item.selectedImage = (item.selectedImage == UIImage(systemName: "person")) ? UIImage(systemName: "person.fill") : UIImage(systemName: "greetingcard.fill")
        guard let imageView = item.value(forKey: "view") as? UIView else { return }
        imageView.layer.add(bounceAnimation, forKey: nil)
    }
}
