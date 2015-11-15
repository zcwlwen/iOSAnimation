//
//  RepeatViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/14.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var purpleSquare: UIView!
    
    
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
        
        
        //蓝色方块左到右移动（一次）
        UIView.animateWithDuration(1, animations: {
             self.blueSquare.center.x  = self.view.bounds.width - self.blueSquare.center.x
        })
        
        //红色方块左到右移动（重复）
        UIView.animateKeyframesWithDuration(1, delay: 0.2, options: .Repeat, animations: {
            self.redSquare.center.x  = self.view.bounds.width - self.redSquare.center.x
            }, completion: nil )
        
        //紫色方块左到右移动
        UIView.animateWithDuration(1, delay: 0.5, options:[.Repeat, .Autoreverse], animations: {
            self.purpleSquare.center.x  = self.view.bounds.width - self.purpleSquare.center.x
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
