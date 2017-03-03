//
//  SetUpPracticeViewController.swift
//  Practice Buddy
//
//  Created by Period 3 on 2/16/17.
//  Copyright © 2017 Sun Period 3. All rights reserved.
//

import UIKit

class SetUpPracticeViewController: UIViewController {
    
    var newMove = PracticeMove()

    
    @IBOutlet weak var moveName: UITextField!
    
    @IBOutlet weak var timeDisplay: UILabel!
    
    @IBOutlet weak var timeSlider: UISlider!
    let step: Float = 1
    
    @IBAction func timeSliderChange(_ sender: AnyObject) {
        let roundedValue = round(timeSlider.value / step) * step
        timeSlider.value = roundedValue
        timeDisplay.text = "\(Int(roundedValue))"
        
//        timeDisplay.text = "\(timeSlider.value)"
    }
    

    @IBAction func addPracticeMove(_ sender: UIButton) {
        
        //Adding one PracticeMove
        newMove.moveName = moveName.text
        newMove.moveTime = Double(timeSlider.value)
        
        //Change range of slider to be 60-time
        timeSlider.maximumValue = 60-timeSlider.value

    }
    
    @IBOutlet weak var practiceMoveDisplay: UITableView!
    
    
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
            nextVC.passedData = [newMove]
        }
    }

}
