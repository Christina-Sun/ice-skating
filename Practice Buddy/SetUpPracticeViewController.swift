//
//  SetUpPracticeViewController.swift
//  Practice Buddy
//
//  Created by Period 3 on 2/16/17.
//  Copyright © 2017 Sun Period 3. All rights reserved.
//

import UIKit

class SetUpPracticeViewController: UIViewController {

    //Create and append practice objects (Practice objects have two things: Move and Time)???
    var practiceMoves = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startPracticeSegue" {
            let nextVC = segue.destination as! PracticeTimerViewController
            nextVC.passedData = 
        }
    }

}
