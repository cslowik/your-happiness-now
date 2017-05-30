//
//  AdvancedToolsVC.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/28/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit
import SafariServices

protocol ToolsDelegate {
    func didSelectTool(_ index: Int, sender: AdvancedToolsVC)
}

class AdvancedToolsVC: UITableViewController, SFSafariViewControllerDelegate {

    var items: [[String:String]] {
        get {
            return FileHelper.main.advTools
        }
    }
    
    var delegate: ToolsDelegate?
    
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

        cell.chapterTitle.text  = items[indexPath.row]["toptitle"]
        cell.chapterTitle.textColor = UIColor.ebonyClay
        
        cell.chapterIndex.textColor = UIColor.ebonyClay
        cell.chapterIndex.text  = items[indexPath.row]["maintitle"]

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
        delegate?.didSelectTool(indexPath.row, sender: self)
        
        let pdfVC = PDFVC(withPDF: items[indexPath.row]["file"]!)
        
        let navigationController = UINavigationController(rootViewController: pdfVC)
        // Add a close button that dismisses the web view controller.
        pdfVC.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(dismissController(sender:)))
        
        self.navigationController?.present(navigationController, animated: true, completion: nil)
    }
    
    func dismissController(sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
