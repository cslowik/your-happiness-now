//
//  FileHelper.swift

import UIKit

class FileHelper {
    
    static let main = FileHelper()
    
    var chapters: [String]
    var videos: [String]
    var videoList: [[String:String]]
    var advTools: [(String, String)]
    var resources: [(String, String, String)]
    
    init() {
        chapters = ["Welcome to Your Happiness Now",
                    "What Happy Companies Know",
                    "What Happy Working Mothers Know",
                    "What Happy Women Know",
                    "What Happy Coaches Know"]
        videos = []
        videoList = []
        advTools = [("Assessment", "Your Abundance Audit"),
                    ("Assessment", "Your CAMPS Audit"),
                    ("Assessment", "Energy Assessment"),
                    ("FAST", "Fear Appreciation Spectrum Test"),
                    ("Worksheet", "Your Committment Audit"),
                    ("Worksheet", "Making It To The Top")]
        resources = [("Online Resources", "What Happy Companies Know", "http://h2cleadership.com"),
                    ("More to Explore", "What Happy Working Mothers Know", "http://h2cleadership.com/mom")]
    }
    
    func load() {
        videoList = readPlist("Video")
    }
    
    func readPlist(_ pListName: String) -> [[String:String]] {
        let pathStr = Bundle.main.path(forResource: pListName, ofType: "plist")
        let data: NSData? = NSData(contentsOfFile: pathStr!)
        let inputList = try! PropertyListSerialization.propertyList(from:data! as Data, options: [], format: nil) as! [[String:String]]
        
        return inputList
    }
    
    func buildChapters() -> [ChapterVC] {
        var chapterVCArray: [ChapterVC] = []
        for (index, chapter) in chapters.enumerated() {
            chapterVCArray.append(buildChapter(chapter, withIndex: index))
        }
        return chapterVCArray
    }
    
    private func buildChapter(_ chapter: String, withIndex index: Int) -> ChapterVC {
        
        let newVC = ChapterVC(index: index)
        return newVC
        
    }
    
}
