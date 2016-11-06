//
//  MasterViewController.swift
//  calculator
//
//  Created by sushant on 24/10/16.
//  Copyright © 2016 sushant. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var screenTextFeild: UITextField!

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
        NSLog("clear button");
    }
    
    @IBAction func signButton(_ sender: AnyObject) {
        NSLog("sign button");
    }
    
    @IBAction func percentageButton(_ sender: AnyObject) {
        NSLog("percentage button");
    }
    
    @IBAction func divideButton(_ sender: AnyObject) {
        NSLog("Divide button");
    }
    
    @IBAction func multipleButton(_ sender: AnyObject) {
        NSLog("multiple button");
    }
    
    @IBAction func subtractButton(_ sender: AnyObject) {
        NSLog("subtract button");
    }
    
    @IBAction func additionButton(_ sender: AnyObject) {
        NSLog("addition button");
    }
    
    @IBAction func equalButton(_ sender: AnyObject) {
        NSLog("equal button");
    }
    
    
    @IBAction func dotButton(_ sender: AnyObject) {
        screenTextFeild.text = screenTextFeild.text! + ".";
    }


}

