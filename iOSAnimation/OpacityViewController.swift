//
//  OpacityViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/14.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    
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
        UIView.animateWithDuration(1, animations: {
            self.blueSquare.alpha = 0.1
        })
        
        
        UIView.animateWithDuration(1, delay: 0.3, options: [], animations: {
            self.redSquare.alpha = 0.1
            }, completion: nil)
        
        
        UIView.animateKeyframesWithDuration(1, delay: 0.6, options: [], animations: {
            self.yellowSquare.alpha = 0.1
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
