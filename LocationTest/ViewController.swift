//
//  ViewController.swift
//  LocationTest
//
//  Created by Alex Marfutin on 20.03.2020.
//  Copyright © 2020 G9. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cellData = [String] ()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! cellTableViewCell
        cell.coordinateText.text = cellData[indexPath.row]
        return cell
    }
    

    @IBOutlet var coordinateDataTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults().array(forKey: "cellData") as? [String] != nil {
            cellData = UserDefaults().array(forKey: "cellData") as! [String]
        }
        coordinateDataTableView.delegate = self
        coordinateDataTableView.dataSource = self
    }
    
    @IBAction func showButtonTapped(_ sender: Any) {
        cellData = UserDefaults().array(forKey: "cellData") as! [String]
        coordinateDataTableView.reloadData()
    }
    
    
}
