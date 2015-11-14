//
//  PositionViewController.swift
//  iOSAnimation
//
//  Created by 张朝伟 on 15/11/13.
//  Copyright © 2015年 zcw. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {
    
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     界面加载完成后再去执行动画
     
     - parameter animated: 动画
     */
    override func viewDidAppear(animated: Bool) {
        
        
        
        super.viewDidAppear(animated)
        
        //动画执行时间 动画执行的过程｛｝一个闭包的形式
        UIView.animateWithDuration(1, animations: {
            
            //蓝色方块从左侧移动到右侧
            self.blueSquare.center.x  = self.view.bounds.width - self.blueSquare.center.x

        })


        UIView.animateWithDuration(1, delay: 0.5, options: [], animations: {
            //红色方块从上面移动到下面
            self.redSquare.center.y   = self.view.bounds.height - self.redSquare.center.y


            }, completion: nil)

        UIView.animateWithDuration(1, delay: 1, options: [], animations: {
            //绿色方块斜线移动
            self.greenSquare.center.y = self.view.bounds.height - self.greenSquare.center.y
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
