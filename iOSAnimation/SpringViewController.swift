//
//  SpringViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/15.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        

        
        
        UIView.animateWithDuration(3, delay: 0, options: .Repeat, animations: {
             self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            }, completion: nil )



        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: .Repeat, animations: {
             self.redSquare.center.x  = self.view.bounds.width - self.redSquare.center.x
            }, completion: nil )
        
        
        
        /**
        第一个参数：动作执行时间
        第二个参数：动作延迟执行时间
        第三个参数：阻尼
        第四个参数：初始速度
        第五个参数：动作执行类型
        第六个参数：执行动作是什么
        第七个参数：执行完成后执行的动作
        */
        
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: .Repeat, animations: {
            self.greenSquare.center.x  = self.view.bounds.width - self.greenSquare.center.x
            }, completion: nil )
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
