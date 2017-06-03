//
//  ScrollingNav.swift
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import MessageUI
import SideMenu
import SafariServices

class ScrollingNav: UINavigationController, MenuDelegate, MFMailComposeViewControllerDelegate, SFSafariViewControllerDelegate {
    
    var menuIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.backgroundColor = UIColor.white
        navigationBar.tintColor = UIColor.loblolly
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont.navFont,
                                             NSForegroundColorAttributeName: UIColor.ebonyClay]
        FileHelper.main.load()
        SideMenuManager.menuWidth = UIScreen.main.bounds.width - 48
        SideMenuManager.menuEnableSwipeGestures = false
        
        SideMenuManager.menuAnimationBackgroundColor = UIColor.clear
        SideMenuManager.menuAnimationPresentDuration = 0.5
        SideMenuManager.menuAnimationUsingSpringWithDamping = 1
        SideMenuManager.menuAnimationInitialSpringVelocity = 0
    }
    
    //MARK:- Sharing UI
    
    func shareViaEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setSubject("The Your Happiness Now App for the iPhone")
            mail.setMessageBody("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\"><html><head><meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"></head><body dir=\"auto\"><div><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><title>The Your Happiness Now App</title><table width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Helvetica, Verdana, Arial, sans-serif;\"><tbody><tr><td align=\"center\"><table width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" style=\"background-color: white; line-height: 18px; font-size: 14px; color:#333333;\"><tbody><tr><td><p align=\"center\"><img src=\"https://s3.amazonaws.com/sixvoices.video/happyapp/appScreenShot.png\" alt=\"The Happy App\" width=\"170\" height=\"140\" align=\"center\"></p><p>Available now: <b>The Your Happiness Now App for iPad, iPhone and iPod touch!</b>  Learn about the life of happiness... </p><p align=\"center\"><a href=\"http://bit.ly/HappyApp\" style=\"color: #57232f;\">Get the App now from the App Store</a></p></td></tr></tbody></table></td></tr></tbody></table></div></body></html>", isHTML: true)
            present(mail, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    func about() {
        let aboutURL = URL(string: "http://fearlessleadersgroup.com")!
        let safariController = SFSafariViewController(url: aboutURL)
        safariController.delegate = self
        self.present(safariController, animated: true, completion: nil)
    }

    ////MARK: - MenuDelegate
    
    func didSelectItem(_ index: Int, sender: MenuVC) {
        switch index {
        case 0:
            break
        case 1:
            break
        case 2:
            break
        case 3:
            sender.dismiss(animated: true, completion: nil)
            callSelector(#selector(shareViaEmail), object: self, delay: 0.35)
            break
        case 4:
            sender.dismiss(animated: true, completion: nil)
            callSelector(#selector(about), object: self, delay: 0.35)
            break
        default:
            break
        }
    }
    
    ////MARK: - SFSafariViewControllerDelegate
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        //print("loaded")
    }
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        //print("finish")
    }
}
