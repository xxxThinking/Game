//
//  Game_1.swift
//  Game
//
//  Created by XXXTHINKING on 2019/6/11.
//  Copyright © 2019 XXXTHINKING. All rights reserved.
//

import Foundation
import UIKit


let gBtn = UIButton.init(type: UIButton.ButtonType.custom)
let gImgV4BottomSide = UIImageView.init(image: UIImage.init(named: "icons01.jpeg"))
let gImgV4TopSide = UIImageView.init(image: UIImage.init(named: "icons02.jpeg"))

var lBool4ChangeImgV : Bool = false

class Game_1SceneViewController:UIViewController{
    var tile:NSMutableArray=NSMutableArray(objects:
     UIImage(named: "icons01.jpeg")!,
     UIImage(named: "icons02.jpeg")!,
     UIImage(named: "icons03.jpeg")!,
     UIImage(named: "icons04.jpeg")!,
     UIImage(named: "icons05.jpeg")!,
     UIImage(named: "icons06.jpeg")!,
     UIImage(named: "icons07.jpeg")!,
     UIImage(named: "icons08.jpeg")!,
     UIImage(named: "icons09.jpeg")!,
     UIImage(named: "icons10.jpeg")!,
     UIImage(named: "icons11.jpeg")!,
     UIImage(named: "icons12.jpeg")!,
     UIImage(named: "icons13.jpeg")!,
     UIImage(named: "icons14.jpeg")!,
     UIImage(named: "icons15.jpeg")!
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI()  {
        
        view.addSubview(gBtn)
        gBtn.addTarget(self, action: #selector(btnDidClick), for: UIControl.Event.touchUpInside)
        gBtn.center = view.center
        
        gBtn.addSubview(gImgV4BottomSide)
        gBtn.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
        
        
        gBtn.addSubview(gImgV4TopSide)
        
        //按钮大小设置为与图片大小一致
        gBtn.bounds = gImgV4BottomSide.bounds
    }
    
    @objc func btnDidClick()  {
        let lAni = CAKeyframeAnimation.init(keyPath: "transform.rotation.y")
        lAni.duration = 1
        lAni.values = [0, Double.pi];
        
        //使得动画结束后，保持动画效果
        lAni.isRemovedOnCompletion = false
        lAni.fillMode = CAMediaTimingFillMode.forwards
        
        lAni.delegate = self;
        
        gBtn.layer.add(lAni, forKey: nil)
    }
}

extension UIViewController: CAAnimationDelegate{
    public func animationDidStart(_ anim: CAAnimation) {
        let lDur:CFTimeInterval = anim.duration
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + lDur * 1) {
            gBtn.bringSubviewToFront(lBool4ChangeImgV == false ? gImgV4BottomSide : gImgV4TopSide)
            lBool4ChangeImgV = !lBool4ChangeImgV
        }
    }
    
    @IBAction func Check(_ sender: AnyObject) {
       
        
    }
}

