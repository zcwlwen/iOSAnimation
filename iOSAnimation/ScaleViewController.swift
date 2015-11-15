//
//  ScaleViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/14.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

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
        
//        UIView.animateWithDuration(1, animations: {
//            
//            
//            self.purpleSquare.transform = CGAffineTransformMakeScale(2.0, 2.0)
//            
//        })
        
        UIView.animateWithDuration(1.5, delay: 0, options: [.CurveEaseInOut,.Repeat, .Autoreverse], animations: {
             self.purpleSquare.transform = CGAffineTransformMakeScale(2.0, 2.0)
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
