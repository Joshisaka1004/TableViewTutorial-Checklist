//
//  addCategoryVC.swift
//  TableViewTutorial-Checklist
//
//  Created by Joachim Vetter on 13.11.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

protocol AddCategoryVCDelegate {
    func addItem(_ controller: addCategoryVC, addedItem: myMainData)
}

class addCategoryVC: UITableViewController {

    @IBOutlet weak var myTextField: UITextField!
    var delegate1: AddCategoryVCDelegate!
    var toBeAddedClass: myMainData!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myTap = UITapGestureRecognizer(target: self, action: #selector(tapConfigure))
        view.addGestureRecognizer(myTap)
    }

    @objc func tapConfigure(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        myTextField.becomeFirstResponder()
    }
    
    @IBAction func doneAction(_ sender: UIBarButtonItem) {
        if let toBeAddedClass = toBeAddedClass {
            toBeAddedClass.texte.append(myTextField.text!)
            toBeAddedClass.pics.append("Oval")
        }
        delegate1.addItem(self, addedItem: toBeAddedClass)
    }
}
