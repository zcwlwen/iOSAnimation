//
//  EasingViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/14.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var purpleSquare: UIView!
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
        
        //线性变换
        UIView.animateWithDuration(2, delay: 0, options:[ .Repeat, .Autoreverse], animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            }, completion: nil)
        //EaseIn变换
        UIView.animateWithDuration(2, delay: 0, options: [ .CurveEaseIn,.Repeat, .Autoreverse], animations: {
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
            }, completion: nil)
        //EaseOut变换
        UIView.animateWithDuration(2, delay: 0, options: [.CurveEaseOut,.Repeat, .Autoreverse], animations: {
            self.purpleSquare.center.x = self.view.bounds.width - self.purpleSquare.center.x
            }, completion: nil)
        //EaseInOut变换
        UIView.animateWithDuration(2, delay: 0, options: [.CurveEaseInOut,.Repeat, .Autoreverse], animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            }, completion: nil)

        
        
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
