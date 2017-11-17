//
//  ViewController.swift
//  TableViewTutorial-Checklist
//
//  Created by Joachim Vetter on 13.11.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myMainVC: UITableViewController, AddCategoryVCDelegate {

    var myInstance = myMainData()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        print(myInstance.texte[myInstance.pics.count - 1],"88888")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myInstance.texte.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myMainCell
        myCell.myLabel.text = myInstance.texte[indexPath.row]
        myCell.myImageView.image = UIImage(named: myInstance.pics[indexPath.row])
        return myCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addCategory" {
            let myController = segue.destination as! addCategoryVC
            myController.toBeAddedClass = myInstance
            myController.delegate1 = self
        }
    }
    
    func addItem(_ controller: addCategoryVC, addedItem: myMainData) {
        navigationController?.popViewController(animated: true)
        myInstance = addedItem
        tableView.reloadData()
    }
}

