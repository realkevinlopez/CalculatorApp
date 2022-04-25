//
//  ViewController.swift
//  Calculator
//
//  Created by Kevin Lopez on 4/22/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var buttonDec: UIButton!
    @IBOutlet weak var buttonEq: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonTimes: UIButton!
    @IBOutlet weak var buttonDivide: UIButton!
    @IBOutlet weak var buttonNegative: UIButton!
    @IBOutlet weak var buttonPercent: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var labelDisplay: UILabel!
    
    var display = "0"
    var input = 0
    var total = 0
    var dblInput = 0.0
    var dblTotal = 0.0
    var hasDecimal = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func Intx10(value: Int) -> Int {
        return value * 10
    }
    
    func Dblx10(value: Double) -> Double {
        return value * 10.0
    }

    func IntBy10(value: Int) -> Int {
        return value / 10
    }
    
    func IntBy10(value: Double) -> Double {
        return value / 10.0
    }
    
    @IBAction func button0Pressed(_ sender: Any) {
        if display != "0" {
            display += "0"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button1Pressed(_ sender: Any) {
        if display == "0" {
            input = 1
            display = "1"
        } else if display.count < 10 {
            input = Intx10(value: input) + 1
            display = display + "1"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        if display == "0" {
            display = "2"
        } else {
            display += "2"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button3Pressed(_ sender: Any) {
        if display == "0" {
            display = "3"
        } else {
            display += "3"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        if display == "0" {
            display = "4"
        } else {
            display += "4"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button5Pressed(_ sender: Any) {
        if display == "0" {
            display = "5"
        } else {
            display += "5"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button6Pressed(_ sender: Any) {
        if display == "0" {
            display = "6"
        } else {
            display += "6"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button7Pressed(_ sender: Any) {
        if display == "0" {
            display = "7"
        } else {
            display += "7"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button8Pressed(_ sender: Any) {
        if display == "0" {
            display = "8"
        } else {
            display += "8"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func button9Pressed(_ sender: Any) {
        if display == "0" {
            display = "9"
        } else {
            display += "9"
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonDecPressed(_ sender: Any) {
        if !display.contains(".") {
            display += "."
            self.labelDisplay.text = display
        }
    }
    
    @IBAction func buttonNegPressed(_ sender: Any) {
        if !display.contains("-") {
            display = "-" + display
        } else {
            display = String(display.dropFirst())
        }
        
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonPercentPressed(_ sender: Any) {
        if hasDecimal == false {
            if total == 0 {
                // do nothing
            } else if total > 100 {
                total /= 100
                display = String(total)
            } else {
                dblTotal = Double(total)
                dblTotal /= 100
                display = String(dblTotal)
            }
        } else {
            dblTotal /= 100
            display = String(dblTotal)
        }
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonClearPressed(_ sender: Any) {
        display = "0"
        input = 0
        total = 0
        dblInput = 0.0
        dblTotal = 0.0
        hasDecimal = false
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonEqPressed(_ sender: Any) {
        total = input
        display = String(total)
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonPlusPressed(_ sender: Any) {
        display = "0"
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonMinusPressed(_ sender: Any) {
        display = "0"
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonTimesPressed(_ sender: Any) {
        display = "0"
        self.labelDisplay.text = display
    }
    
    @IBAction func buttonDividePressed(_ sender: Any) {
        display = "0"
        self.labelDisplay.text = display
    }
}

