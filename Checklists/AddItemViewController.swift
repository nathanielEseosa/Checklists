//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Nathaniel Idahosa on 02.06.22.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        navigationItem.largeTitleDisplayMode = .never
        super.viewDidLoad()

    }
    
    @IBAction func cancelButton() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func doneButton() {
        navigationController?.popViewController(animated: true)
    }

}
