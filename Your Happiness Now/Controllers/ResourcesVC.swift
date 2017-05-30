//
//  ResourcesVC.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/30/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit
import SafariServices

protocol ResourcesDelegate {
    func didSelectResource(_ index: Int, sender: ResourcesVC)
}

class ResourcesVC: UITableViewController, SFSafariViewControllerDelegate {
    
    var resources: [(String, String, String)] {
        get {
            return FileHelper.main.resources
        }
    }
    
    var delegate: ResourcesDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resources.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath) as! ContentsTableViewCell
        
        cell.chapterTitle.text  = resources[indexPath.row].1
        cell.chapterTitle.textColor = UIColor.ebonyClay
        
        cell.chapterIndex.textColor = UIColor.ebonyClay
        cell.chapterIndex.text  = resources[indexPath.row].0
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        loadURL(resources[indexPath.row].2)
    }
    
    func loadURL(_ urlString: String) {
        let theURL = URL(string: urlString)!
        let safariController = SFSafariViewController(url: theURL)
        safariController.delegate = self
        self.present(safariController, animated: true, completion: nil)
    }
    
    ////MARK: - SFSafariViewControllerDelegate
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        //print("loaded")
    }
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        //print("finish")
    }

}
