//
//  ViewController.swift
//  Calculator main branch
//
//  Created by Kevin Lopez on 4/22/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
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
    
    var currentInput = 0
    var previousInput = 0
    var remainder = 0
    var currentOperation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button0Pressed(_ sender: Any) {
        digitPressed(currentButton: 0)
    }
    
    @IBAction func button1Pressed(_ sender: Any) {
        digitPressed(currentButton: 1)
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        digitPressed(currentButton: 2)
    }
    
    @IBAction func button3Pressed(_ sender: Any) {
        digitPressed(currentButton: 3)
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        digitPressed(currentButton: 4)
    }
    
    @IBAction func button5Pressed(_ sender: Any) {
        digitPressed(currentButton: 5)
    }
    
    @IBAction func button6Pressed(_ sender: Any) {
        digitPressed(currentButton: 6)
    }
    
    @IBAction func button7Pressed(_ sender: Any) {
        digitPressed(currentButton: 7)
    }
    
    @IBAction func button8Pressed(_ sender: Any) {
        digitPressed(currentButton: 8)
    }
    
    @IBAction func button9Pressed(_ sender: Any) {
        digitPressed(currentButton: 9)
    }
    
    @IBAction func buttonDecPressed(_ sender: Any) {
//        if !self.labelDisplay.text.contains(".") {
//        self.labelDisplay.text?.append(".")
//        }
        self.labelDisplay.text = "Decimals don't work"
        currentInput = 0
    }
    
    @IBAction func buttonNegPressed(_ sender: Any) {
        
        if !self.labelDisplay.text!.contains("-") {
            self.labelDisplay.text = "-" + self.labelDisplay.text!
        } else {
            self.labelDisplay.text = String(self.labelDisplay.text!.dropFirst())
        }
        
        currentInput *= -1
        
    }
    
    @IBAction func buttonPercentPressed(_ sender: Any) {
//        if hasDecimal == false {
//            if total == 0 {
//                // do nothing
//            } else if total > 100 {
//                total /= 100
//                display = String(total)
//            } else {
//                dblTotal = Double(total)
//                dblTotal /= 100
//                display = String(dblTotal)
//            }
//        } else {
//            dblTotal /= 100
//            display = String(dblTotal)
//        }
//        self.labelDisplay.text = display
        
        self.labelDisplay.text = calculate(input1: currentInput,
                                           input2: 100,
                                           currentOperation: "÷")
        remainder = 0
        
    }
    
    @IBAction func buttonClearPressed(_ sender: Any) {
        currentInput = 0
        previousInput = 0
        remainder = 0
        currentOperation = ""
        
        self.labelDisplay.text = "0"
    }
    
    @IBAction func buttonPlusPressed(_ sender: Any) {
        currentOperation = "+"
        operationPressed(operation: currentOperation)
    }
    
    @IBAction func buttonMinusPressed(_ sender: Any) {
        currentOperation = "-"
        operationPressed(operation: currentOperation)
    }
    
    @IBAction func buttonTimesPressed(_ sender: Any) {
        currentOperation = "×"
        operationPressed(operation: currentOperation)
    }
    
    @IBAction func buttonDividePressed(_ sender: Any) {
        currentOperation = "÷"
        operationPressed(operation: currentOperation)
    }
    
    @IBAction func buttonEqPressed(_ sender: Any) {
        
        self.labelDisplay.text = calculate(input1: previousInput,
                                           input2: currentInput,
                                           currentOperation: currentOperation)
        
        currentOperation = ""
        remainder = 0
    }
    
    func digitPressed(currentButton: Int) {
        
//        if display != "0" {
//            display += "0"
//        } else {
//            currentInput = Intx10(value: currentInput)
//        }
//
//        self.labelDisplay.text = display
        
        switch currentButton {
            
        case 0:
            
            if currentInput == 0 {
                // do nothing
            } else {
                currentInput = Intx10(value: currentInput)
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 1:
            
            if currentInput == 0 {
                currentInput = 1
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 2:
            
            if currentInput == 0 {
                currentInput = 2
            } else {
                currentInput = Intx10(value: currentInput) + 2
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 3:
            
            if currentInput == 0 {
                currentInput = 3
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 4:
            
            if currentInput == 0 {
                currentInput = 4
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 5:
            
            if currentInput == 0 {
                currentInput = 5
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 6:
            
            if currentInput == 0 {
                currentInput = 6
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 7:
            
            if currentInput == 0 {
                currentInput = 7
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 8:
            
            if currentInput == 0 {
                currentInput = 8
            } else {
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        case 9:
            
            if currentInput == 0 {
                currentInput = 9
                currentInput = Intx10(value: currentInput) + 1
            }
            
            self.labelDisplay.text = String(currentInput)
            
        default:
            currentInput = 0
            self.labelDisplay.text = "0"
        }
    }
    
    func operationPressed(operation: String) {
        
        previousInput = currentInput
        currentInput = 0
        
        self.labelDisplay.text = calculate(input1: previousInput,
                                           input2: currentInput,
                                           currentOperation: currentOperation)
        remainder = 0

        
        if currentOperation == "" {
            
            previousInput = currentInput
            currentInput = 0
            self.labelDisplay.text = "0"
            
        } else {
            
            self.labelDisplay.text = calculate(input1: previousInput,
                                               input2: currentInput,
                                               currentOperation: currentOperation)
            remainder = 0
            
        }
        
    }
    
    func calculate(input1: Int, input2: Int, currentOperation: String) -> String {
        
        switch currentOperation {
        case "+":
            return String(input1 + input2)
        case "-":
            return String(input1 - input2)
        case "×":
            return String(input1 * input2)
        case "÷":
            
            if input2 == 0 {
                return "Undefined"
            }
            
            remainder = input1 % input2
            
            if remainder != 0 {
                return String(String(input1 / input2) + ", R = \(remainder)")
            } else {
                return String(input1 / input2)
            }
                              
        default:
            return String(currentInput)
        }
    }
    
    func Intx10(value: Int) -> Int {
        return value * 10
    }
    
}

