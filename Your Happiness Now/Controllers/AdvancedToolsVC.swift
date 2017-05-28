//
//  AdvancedToolsVC.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/28/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit

protocol ToolsDelegate {
    func didSelectTool(_ index: Int, sender: AdvancedToolsVC)
}

class AdvancedToolsVC: UITableViewController {

    var items: [(String, String)] {
        get {
            return FileHelper.main.advTools
        }
    }
    
    var delegate: AdvancedToolsVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "advToolCell", for: indexPath) as! ContentsTableViewCell

        cell.chapterTitle.text  = items[indexPath.row].1
        cell.chapterTitle.textColor = UIColor.ebonyClay
        
        cell.chapterIndex.textColor = UIColor.ebonyClay
        cell.chapterIndex.text  = items[indexPath.row].0

        return cell
    }
    

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cellBackground = UIColor.athensGray
        cell.backgroundColor = cellBackground
        
        if (indexPath as NSIndexPath).row % 2 != 0 {
            cell.backgroundColor = UIColor.clear
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}
