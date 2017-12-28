//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Garrett Wolfe on 12/28/17.
//  Copyright © 2017 Garrett Wolfe. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var returnVal:Float = 0
    var numOne:Float = 0
    var numtwo:Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func zero(_ sender: Any) {
        val.text = "/(val.text)0"
    }
    @IBAction func one(_ sender: Any) {
        val.text = "/(val.text)1"
    }
    @IBAction func two(_ sender: Any) {
        val.text = "/(val.text)2"
    }
    @IBAction func three(_ sender: Any) {
        val.text = "/(val.text)3"
    }
    @IBAction func four(_ sender: Any) {
        val.text = "/(val.text)4"
    }
    @IBAction func five(_ sender: Any) {
        val.text = "/(val.text)5"
    }
    @IBAction func six(_ sender: Any) {
        val.text = "/(val.text)6"
    }
    @IBAction func seven(_ sender: Any) {
        val.text = "/(val.text)7"
    }
    @IBAction func eight(_ sender: Any) {
        val.text = "/(val.text)8"
    }
    @IBAction func nine(_ sender: Any) {
        val.text = "/(val.text)9"
    }
    @IBAction func divide(_ sender: Any) {
        numOne=(val.text) //convert to int
        val.text = ""
    }
    @IBAction func multiply(_ sender: Any) {
        numOne=(val.text) //convert to int
        val.text = ""

    }
    @IBAction func add(_ sender: Any) {
        numOne = (val.text)(Float) //convert to int
        val.text = ""

    }
    @IBAction func subtract(_ sender: Any) {
        numOne=(val.text) //convert to int
        val.text = ""

    }
    @IBOutlet weak var val: UILabel!
    @IBAction func clearVal(_ sender: UIButton) {
    }
    @IBAction func negate(_ sender: Any) {
    }
    
    @IBAction func enter(_ sender: Any) {
    numtwo = (val.text) //convert to int
        returnVal = calcresult(num1:numOne, num2:numtwo)
    }
    
    @IBAction func mod(_ sender: Any) {
    }
    func calcresult(num1:Float, num2:Float)-> Float{
    //fill in using nums
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

