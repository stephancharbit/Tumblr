//
//  AccountViewController.swift
//  Tumblr
//
//  Created by Stephan Charbit on 11/1/16.
//  Copyright © 2016 Stephan Charbit. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    var fadeTransition: FadeTransition!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var destinationViewController = segue.destination
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
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
