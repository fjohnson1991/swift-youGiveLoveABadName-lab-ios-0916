//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonJoviImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(bonJoviImage)
        
        bonJoviImage.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.snp.width)
            make.centerY.equalTo(self.view.snp.centerY)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.40)
        }
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: [], animations: {
            print("inside first step of animation")
            self.bonJoviImage.snp.remakeConstraints({ (make) in
                make.height.equalTo(self.view.snp.height)
            })
            self.view.layoutIfNeeded()
        }) { (completion) in
            print("inside completion of animation")
            self.bonJoviImage.snp.makeConstraints({ (make) in
                make.width.equalTo(self.view.snp.width)
                make.centerY.equalTo(self.view.snp.centerY)
                make.height.equalTo(self.view.snp.height).multipliedBy(0.40)
            })
            self.view.layoutIfNeeded()
        }
        
        
        
//        self.view.layoutIfNeeded()
//        UIView.animateKeyframes(withDuration: 2.0, delay: 0.0, options: .calculationModeLinear, animations: {
//            
//            self.bonJoviImage.snp.makeConstraints({ (make) in
//                self.bonJoviImage.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
//                make.center.equalTo(self.view.snp.center)
//            })
//            
//            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/3.0, animations: {
//                print("animation one")
//                self.bonJoviImage.snp.remakeConstraints({ (make) in
//                    make.center.equalTo(self.view.snp.center)
//                    self.bonJoviImage.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
//                })
//                
//            })
//            
//            UIView.addKeyframe(withRelativeStartTime: 1/3.0, relativeDuration: 1/3.0, animations: {
//                print("animation two")
//                self.bonJoviImage.snp.remakeConstraints({ (make) in
//                    make.width.equalTo(self.view.snp.width)
//                    make.height.equalTo(self.view.snp.height).multipliedBy(1.5)
//                    
//                })
//                
//            })
//            self.view.layoutIfNeeded()
//            
//            UIView.addKeyframe(withRelativeStartTime: 2/3.0, relativeDuration: 1/3.0, animations: {
//                print("animation three")
//                self.bonJoviImage.snp.remakeConstraints({ (make) in
//                    make.width.equalTo(self.view.snp.width)
//                    make.height.equalTo(self.view.snp.height)
//                    
//                })
//            })
//            self.view.layoutIfNeeded()
//        }) { (completion) in
//            self.view.layoutIfNeeded()
//            self.bonJoviImage.snp.makeConstraints({ (make) in
//                make.width.equalTo(self.view.snp.width)
//                make.width.equalTo(self.view.snp.width)
//                make.height.equalTo(self.view.snp.height).multipliedBy(1.5)
//            })
//            
//            UIView.animate(withDuration: 2.0, delay: 1.0, options: [], animations: {
//                
//                self.bonJoviImage.snp.remakeConstraints { (make) in
//                    make.width.equalTo(self.view.snp.width)
//                    make.centerY.equalTo(self.view.snp.centerY)
//                    make.height.equalTo(self.view.snp.height).multipliedBy(0.40)
//                }
//                
//                self.view.layoutIfNeeded()
//                }, completion: nil)
//            
//        }
        
    }
}

