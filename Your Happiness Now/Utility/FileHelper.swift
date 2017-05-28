//
//  FileHelper.swift

import UIKit

class FileHelper {
    
    static let main = FileHelper()
    
    var chapters: [String]
    var videos: [String]
    var advTools: [(String, String)]
    
    init() {
        chapters = ["Welcome to Your Happiness Now",
                    "What Happy Companies Know",
                    "What Happy Working Mothers Know",
                    "What Happy Women Know",
                    "What Happy Coaches Know"]
        videos = []
        advTools = [("Assessment", "Your Abundance Audit"),
                    ("Assessment", "Your CAMPS Audit"),
                    ("Assessment", "Energy Assessment"),
                    ("FAST", "Fear Appreciation Spectrum Test"),
                    ("Worksheet", "Your Committment Audit"),
                    ("Worksheet", "Making It To The Top")]
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
