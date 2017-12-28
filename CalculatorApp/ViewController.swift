//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Garrett Wolfe on 12/28/17.
//  Copyright © 2017 Garrett Wolfe. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var returnVal:Float? = 0
    var numOne:Float! = 0
    var numtwo:Float! = 0
    var op:String!=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        val.text="0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func zero(_ sender: Any) {
        val.text = (val.text!) + "0"
    }
    @IBAction func one(_ sender: Any) {
        val.text = (val.text!) + "1"
    }
    @IBAction func two(_ sender: Any) {
        val.text = (val.text!) + "2"
    }
    @IBAction func three(_ sender: Any) {
        val.text = (val.text!) + "3"
    }
    @IBAction func four(_ sender: Any) {
        val.text = (val.text!) + "4"
    }
    @IBAction func five(_ sender: Any) {
        val.text = (val.text!) + "5"
    }
    @IBAction func six(_ sender: Any) {
        val.text = (val.text!) + "6"
    }
    @IBAction func seven(_ sender: Any) {
        val.text = (val.text!) + "7"
    }
    @IBAction func eight(_ sender: Any) {
        val.text = (val.text!) + "8"
    }
    @IBAction func nine(_ sender: Any) {
        val.text = (val.text!) + "9"
    }
    @IBAction func divide(_ sender: Any) {
        numOne=(Float)(val.text!) //convert to int
        val.text = ""
        op="D"
    }
    @IBAction func multiply(_ sender: Any) {
        numOne=(Float)(val.text!) //convert to int
        val.text = ""
        op="M"

    }
    @IBAction func add(_ sender: Any) {
        numOne=(Float)(val.text!) //convert to int
        val.text = ""
        op="A"

    }
    @IBAction func subtract(_ sender: Any) {
        numOne=(Float)(val.text!) //convert to int
        val.text = ""
        op="S"

    }
    @IBOutlet weak var val: UILabel!
    //^this is the value displayed
    
    @IBAction func clearVal(_ sender: UIButton) {
        val.text=""
    }
    @IBAction func negate(_ sender: Any) {
        //add a - to beginning
    }
    
    @IBAction func enter(_ sender: Any) {
    numtwo=Float(val.text!)
        returnVal = calcresult(num1:numOne, num2:numtwo, op:op)
        val.text = returnVal!.description
    }
    
    @IBAction func mod(_ sender: Any) {
        var n = (Float)(val.text!)
        n=n!/100
        val.text = n!.description
    }
    func calcresult(num1:Float, num2:Float, op:String)-> Float{
    //fill in using nums
        switch op{
        case "A":
            return (num1+num2)
        case "M":
            return (num1*num2)
        case "D":
            return (num1/num2)
        case "S":
            return (num1-num2)
        default:
            return 0
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

