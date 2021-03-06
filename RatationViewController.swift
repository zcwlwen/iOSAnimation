//
//  RatationViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/14.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class RatationViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     options: UIViewAnimationOptions.CurveLinear  -  控制匀速转动 线性关系（还有很多类型可查看官方文档）
     animations｛｝执行动画
     后面那个闭包 是执行完动画后执行的动作
     */

    func spin () {
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
            self.image.transform = CGAffineTransformRotate(self.image.transform, CGFloat(M_PI))
            }) { (finished) -> Void in
                self.spin()
        }
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.spin()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
