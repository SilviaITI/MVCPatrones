//
//  HomeTableViewController.swift
//  MVCPatrones
//
//  Created by Silvia Casanova Martinez on 2/10/23.
//

import UIKit

class HomeTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sampleCharacterData.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell else{
            return UITableViewCell()
        }
        if (indexPath.row < sampleCharacterData.count) {
            cell.updateView(data: sampleCharacterData[indexPath.row])
        }
        return cell
    }
    
    // click en elemento
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = DetailViewController()
        if (indexPath.row < sampleCharacterData.count) {
            nextVC.characterData = sampleCharacterData[indexPath.row]
           
        }
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
