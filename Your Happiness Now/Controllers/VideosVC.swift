//
//  VideosVC.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/30/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideosVC: UITableViewController {

    var videos: [[String:String]] {
        get {
            return FileHelper.main.videoList
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell", for: indexPath) as! ContentsTableViewCell
        
        cell.chapterTitle.text  = videos[indexPath.row]["toptitle"]!
        cell.chapterTitle.textColor = UIColor.ebonyClay
        
        cell.chapterIndex.textColor = UIColor.ebonyClay
        cell.chapterIndex.text  = videos[indexPath.row]["maintitle"]!
        
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
        watchVideo(indexPath.row)
    }

    func watchVideo(_ videoIndex: Int) {
        let videoURL = FileHelper.main.videoList[videoIndex]["url"]!
        let player = AVPlayer(url: URL(string: videoURL)!)
        let playerVC = AVPlayerViewController()
        playerVC.player = player
        present(playerVC, animated: true) {
            playerVC.player?.play()
        }
    }

}
