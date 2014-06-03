/*
* RootViewController.m
*
*            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
*                    Version 2, February 2013
*
* Copyright (C) 2013 Joyfl
*
* Everyone is permitted to copy and distribute verbatim or modified
* copies of this license document, and changing it is allowed as long
* as the name is changed.
*
*            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
*   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
*
*  0. You just DO WHAT THE FUCK YOU WANT TO.
*
*/

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        var button: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(10, 10, 300, 60)
        button.setTitle("Show", forState: UIControlState.Normal)
        button.addTarget(self, action: "showButtonTouchUpInside", forControlEvents: UIControlEvents.TouchUpInside)
//        button.targetForAction("showButtonTouchUpInside", withSender: self)
        self.view.addSubview(button)
    }

    func showButtonTouchUpInside() {
        JLToast.makeText("Basic JLToast").show()
//        [[JLToast makeText:@"Basic JLToast"] show];
//        [[JLToast makeText:@"You can set duration. JLToastShortDelay means 2 seconds. JLToastLongDelay means 3.5 seconds." duration:JLToastLongDelay] show];
//        [[JLToast makeText:@"If delay is set, JLToast will be shown after delay." delay:1 duration:5] show];
    }
}
