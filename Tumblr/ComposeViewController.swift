//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Stephan Charbit on 11/1/16.
//  Copyright © 2016 Stephan Charbit. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textIcon: UIImageView!
    @IBOutlet weak var photoIcon: UIImageView!
    @IBOutlet weak var quoteIcon: UIImageView!
    @IBOutlet weak var linkIcon: UIImageView!
    @IBOutlet weak var chatIcon: UIImageView!
    @IBOutlet weak var videoIcon: UIImageView!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
        textIcon.center.y = 720
        photoIcon.center.y = 720
        quoteIcon.center.y = 720
        chatIcon.center.y = 720
        videoIcon.center.y = 720
        linkIcon.center.y = 720
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated) // No need for semicolon
        UIView.animate(withDuration:0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options:[] ,
                       animations: { () -> Void in
                        self.textIcon.center.y = 190
       }, completion: nil)
        UIView.animate(withDuration:0.6, delay: 0.05, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.2, options:[] ,
                       animations: { () -> Void in
                        self.photoIcon.center.y = 190
            }, completion: nil)
        UIView.animate(withDuration:0.6, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.3, options:[] ,
                       animations: { () -> Void in
                        self.quoteIcon.center.y = 190
            }, completion: nil)
        UIView.animate(withDuration:0.6, delay: 0.15, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.4, options:[] ,
                       animations: { () -> Void in
                        self.linkIcon.center.y = 325
            }, completion: nil)
        UIView.animate(withDuration:0.6, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options:[] ,
                       animations: { () -> Void in
                        self.chatIcon.center.y = 325
            }, completion: nil)
        UIView.animate(withDuration:0.6, delay: 0.25, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options:[] ,
                       animations: { () -> Void in
                        self.videoIcon.center.y = 325
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapNevermind(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
