//
//  ViewController.swift
//  madame2
//
//  Created by Larisa Barbu on 13/02/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variable declaration
    @IBOutlet weak var hideRed: UIButton!
    @IBOutlet weak var hideWhite: UIButton!
    @IBOutlet weak var redRose: UIImageView!
    @IBOutlet weak var whiteRose: UIImageView!
    
    var x: Int = 0
    var y: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //action 1 - hidding red rose
    @IBAction func hideRed(sender: AnyObject) {
        x = x + 1
        if (x % 2 == 0) {
            redRose.hidden = false
            hideRed.setTitle("Hide Red Rose", forState: .Normal)

        }
        else {
            redRose.hidden = true
            hideRed.setTitle("Show Red Rose", forState: .Normal)
        }
        
        
    }
    //action 2 - hidding white rose
    @IBAction func hideWhite(sender: AnyObject) {
        //whiteRose.hidden = true
        
        
        if (y % 2 == 0 ){
            whiteRose.hidden = false
            hideWhite.setTitle("Hide White Rose", forState: .Normal)
        }
        else {
            whiteRose.hidden = true
            hideWhite.setTitle("Show White Rose", forState: .Normal)
        }
        y = y + 1
    }
}

