//
//  ChecklistViewController.swift
//  Checklists
//
//  Created by Nathaniel Idahosa on 13.04.22.
//

import UIKit

class ChecklistViewController: UITableViewController {
    let row0text = "Walk the dog"
    let row1text = "Brush teeth"
    let row2text = "Learn iOS development"
    let row3text = "Soccer practice"
    let row4text = "Eat ice cream"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)

        let label = cell.viewWithTag(1000) as! UILabel

          if indexPath.row == 0 {
            label.text = row0text
          } else if indexPath.row == 1 {
            label.text = row1text
          } else if indexPath.row == 2 {
            label.text = row2text
          } else if indexPath.row == 3 {
            label.text = row3text
          } else if indexPath.row == 4 {
            label.text = row4text
          }

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
