//
//  FileHelper.swift

import UIKit

class FileHelper {
    
    static let main = FileHelper()
    
    var chapters: [String]
    
    init() {
        chapters = ["Welcome to Your Happiness Now",
                    "What Happy Companies Know",
                    "What Happy Working Mothers Know",
                    "What Happy Women Know",
                    "What Happy Coaches Know"]
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
