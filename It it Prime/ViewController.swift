//
//  ViewController.swift
//  It it Prime
//
//  Created by Mifsud, Brent on 2018-05-10.
//  Copyright © 2018 Brent Mifsud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var textBox: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let textEntered = textBox.text  {
            if let numberEntered = Int(textEntered){
                if isPrime(numberEntered){
                    resultLabel.text = "It is Prime!"
                }else{
                    resultLabel.text = "It is not Prime!"
                }
            }else{
                resultLabel.text = "Please enter a number"
            }
        }else{
            resultLabel.text = "Please enter a value"
        }
    }
    
    func isPrime(_ number: Int) -> Bool{
        return number > 1 && !(2..<number).contains{number % $0 == 0}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

