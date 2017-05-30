//
//  MenuVC.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/28/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit

protocol MenuDelegate {
    func didSelectItem(_ index: Int, sender: MenuVC)
}

class MenuVC: UITableViewController, ToolsDelegate {
    
    var delegate: MenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectItem(indexPath.row, sender: self)
        switch indexPath.row {
        case 0:
            break
        default:
            break
        }
    }
    
    //MARK:- Tools Delegate
    func didSelectTool(_ index: Int, sender: AdvancedToolsVC) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toolsSegue" {
            let toolsVC = segue.destination as! AdvancedToolsVC
            toolsVC.delegate = self
        }
    }
}
