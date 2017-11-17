//
//  myMainData.swift
//  TableViewTutorial-Checklist
//
//  Created by Joachim Vetter on 13.11.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myMainData: NSObject {
    var texte = [String]()
    var pics = [String]()
    override init() {
        texte += ["Hakyuu", "Skyscrapers", "Battleships", "Parking Lot"]
        for _ in 1...4 {
            pics += ["cat"]
        }
        
    }
}
