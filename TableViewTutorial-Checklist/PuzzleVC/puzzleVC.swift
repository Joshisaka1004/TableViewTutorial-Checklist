//
//  puzzleVC.swift
//  TableViewTutorial-Checklist
//
//  Created by Joachim Vetter on 16.11.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class puzzleVC: UIViewController {

    @IBOutlet var gridBtnsOutlets: [UIButton]!
    var myPuzzle = [9, 0, 0, 0, 12, 7, 0, 0, 52]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(gridBtnsOutlets.count, myPuzzle.index(of: 7)!)
        for button in gridBtnsOutlets where myPuzzle[button.tag] != 0 {
            button.setTitle("\(myPuzzle[button.tag])", for: .normal)
        } 
    }

    @IBAction func myGridBtns(_ sender: UIButton) {
        if sender.tag % 2 == 0 {
            sender.backgroundColor = UIColor.red
        } else {
            sender.backgroundColor = UIColor.lightGray
        }
    }
}
