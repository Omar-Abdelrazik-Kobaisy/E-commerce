//
//  ViewController.swift
//  E-commerce
//
//  Created by Omar on 01/03/2023.
//

import UIKit
import Lottie
class  SplashController: UIViewController {

    private let animationView = AnimationView()
      override func viewDidLoad() {
          super.viewDidLoad()
          setupAnimations()
          DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                 let vc = self.storyboard?.instantiateViewController(identifier: "SplashNavigation") as! SplashNavigation
                          vc.modalTransitionStyle = .crossDissolve
                          vc.modalPresentationStyle = .fullScreen
                          self.present(vc, animated: true)
                      }
          }
      private func setupAnimations(){
          animationView.frame = CGRect(x: 0, y: 0, width: view.frame.width , height: 400)
          animationView.center = view.center
          view.addSubview(animationView)
          animationView.animation = Animation.named("splash1")
          animationView.loopMode = .playOnce
          animationView.contentMode = .scaleAspectFit
          animationView.play()
      }


}

