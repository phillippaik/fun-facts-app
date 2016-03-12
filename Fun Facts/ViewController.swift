//
//  ViewController.swift
//  Fun Facts
//
//  Created by Phillip Paik on 2/8/16.
//  Copyright © 2016 Phillip Paik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFackButton: UIButton!
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.factsArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomnum = factBook.ranNum()
        let randomC = colorWheel.randomColor()
        funFactLabel.text = factBook.factsArray[randomnum]
        view.backgroundColor = randomC
        funFackButton.setTitleColor(randomC, forState: UIControlState.Normal)
    }

}

