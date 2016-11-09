//
//  MasterViewController.swift
//  calculator
//
//  Created by sushant on 24/10/16.
//  Copyright © 2016 sushant. All rights reserved.
//

import UIKit

enum operation : Int {
    case addition = 0,
    subtraction ,
    multiplication ,
    divide ,
    percengate
}

class MasterViewController: UIViewController {

    @IBOutlet weak var screenTextFeild: UITextField!
    
    var operations : Int!
    var inputValue : Double!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationController?.setNavigationBarHidden(true, animated: false);
        screenTextFeild.textAlignment = NSTextAlignment.right;
        screenTextFeild.isUserInteractionEnabled = false;
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
//    MARK: - buttons delegates
    
    @IBAction func zeroButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "0";
    }
    
    @IBAction func oneButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "1";
    }
    
    @IBAction func twoBotton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "2";
    }
    
    @IBAction func threeButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "3";
    }
    
    @IBAction func fourButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "4";
    }
    
    @IBAction func fiveButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "5";
    }
    
    @IBAction func sixButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "6";
    }
    
    @IBAction func sevenButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "7";
    }
    
    @IBAction func eightButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "8";
    }
    
    @IBAction func nineButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + "9";
    }
    
    @IBAction func clearButton(_ sender: AnyObject) {
        operations = -1
        screenTextFeild.text = ""
    }
    
    @IBAction func signButton(_ sender: AnyObject) {
        
        var inputNumber : Double!
        inputNumber = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
        inputNumber = inputNumber != 0 ? -inputNumber : 0
        screenTextFeild.text = String(inputNumber)
    }
    
    @IBAction func percentageButton(_ sender: AnyObject) {
        
        var inputValue2 : Double!
        inputValue2 = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
        inputValue2 = inputValue2/100
        screenTextFeild.text = String(inputValue2)
    }
    
    @IBAction func divideButton(_ sender: AnyObject) {
        operations = operation.divide.rawValue
        inputValue = Double(screenTextFeild.text!)
        screenTextFeild.text = ""
    }
    
    @IBAction func multipleButton(_ sender: AnyObject) {
        operations = operation.multiplication.rawValue
        inputValue = Double(screenTextFeild.text!)
        screenTextFeild.text = ""
    }
    
    @IBAction func subtractButton(_ sender: AnyObject) {
        operations = operation.subtraction.rawValue
        inputValue = Double(screenTextFeild.text!)
        screenTextFeild.text = ""
    }
    
    @IBAction func additionButton(_ sender: AnyObject) {
        operations = operation.addition.rawValue
        inputValue = Double(screenTextFeild.text!)
        screenTextFeild.text = ""
    }
    
    @IBAction func dotButton(_ sender: AnyObject) {
        
        if screenTextFeild.text?.range(of:".") == nil {
            screenTextFeild.text = screenTextFeild.text! + ".";
        }
    }
    
    @IBAction func equalButton(_ sender: AnyObject) {
        
        var inputValue2 : Double!
        
        switch operations {
            
        case operation.addition.rawValue:
            
            inputValue2 = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
            inputValue2 = inputValue + inputValue2
            screenTextFeild.text = String(inputValue2)
            
        case operation.subtraction.rawValue:
            
            inputValue2 = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
            inputValue2 = inputValue - inputValue2
            screenTextFeild.text = String(inputValue2)
            
        case operation.multiplication.rawValue:
            
            inputValue2 = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
            inputValue2 = inputValue * inputValue2
            screenTextFeild.text = String(inputValue2)
            
        case operation.divide.rawValue:
            
            inputValue2 = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
            inputValue2 = inputValue / inputValue2
            screenTextFeild.text = String(inputValue2)
            
        case operation.percengate.rawValue:
            
            inputValue2 = Double(screenTextFeild.text!) != nil ? Double(screenTextFeild.text!) : 0
            inputValue2 = inputValue2/100
            screenTextFeild.text = String(inputValue2)
            
        default:
            print("default");
            
        }
    }
    
    


}

