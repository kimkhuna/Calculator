//
//  ViewController.swift
//  calculator1
//
//  Created by 김경훈 on 2022/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var isAdd = false
    var isSub = false
    var isMul = false
    var isDiv = false
    
    var sum = Int()
    var num = Int()
    
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Label Design
        display.layer.cornerRadius = 50
        display.layer.masksToBounds = true
        
        
    }
    

    
    var userIsInTheMiddleOfTyping = false

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit:String?  = sender.titleLabel?.text
        
       
        
        if userIsInTheMiddleOfTyping{
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit!
            
        }else{
            display!.text = digit
        }
        userIsInTheMiddleOfTyping = true
        
    }
    
    @IBAction func clear(_ sender: UIButton) {
        display.text = "0"
        sum = 0
        num = 0
        
        userIsInTheMiddleOfTyping = false
    }
    
    @IBAction func add(_ sender: UIButton) {
        if (isAdd == false){
            num = Int(display.text!)!
            print("num", num)
            sum = num + sum
            print("sum", sum)
            userIsInTheMiddleOfTyping = false
            isAdd = true
        }
    }
    
    @IBAction func sub(_ sender: UIButton) {
        if (isSub == false){
            num = Int(display.text!)!
            print("num", num)
            sum = num - sum
            print("sum", sum)
            userIsInTheMiddleOfTyping = false
            isSub = true
        }
    }
    @IBAction func mul(_ sender: UIButton) {
        if (isMul == false){
            num = Int(display.text!)!
            print("num", num)
            sum = num * sum
            print("sum", sum)
            userIsInTheMiddleOfTyping = false
            isMul = true
        }
    }
    
    @IBAction func div(_ sender: UIButton) {
        if (isDiv == false){
            num = Int(display.text!)!
            print("num", num)
            sum = num + sum
            print("sum", sum)
            userIsInTheMiddleOfTyping = false
            isDiv = true
        }
    }
    
    @IBAction func equal(_ sender: UIButton) {
        if isAdd{
            sum = sum + Int(display.text!)!
            print("result Add", sum)
            isAdd = false
            display.text = String(sum)
        }
    }
    
    
}

