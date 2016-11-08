//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Stephan Charbit on 11/1/16.
//  Copyright © 2016 Stephan Charbit. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var selectedIndex: Int = 0
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    
    var viewControllers: [UIViewController]!
    
    var fadeTransition: FadeTransition!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeView")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchView")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountView")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingView")
        // Do any additional setup after loading the view.
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].isSelected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds  
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
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
