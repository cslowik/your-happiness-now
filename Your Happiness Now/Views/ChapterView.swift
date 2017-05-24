//
//  ChapterView.swift

import UIKit
import SnapKit
import Atributika
import AVKit
import AVFoundation

enum ListStyle {
    case bullet
    case number
}

protocol ChapterViewDelegate {
    func watchVideo(atURL videoURL: String)
}

class ChapterView: UIScrollView {
    
    var chapterDelegate: ChapterViewDelegate!
    let paragraph = NSMutableParagraphStyle()
    let edgeMargin: CGFloat = UIScreen.main.bounds.width * 0.024
    let screenWidth = UIScreen.main.bounds.width
    let cellHeight: CGFloat = 56.0
    var cellWidth: CGFloat = 0

    init(frame: CGRect, chapter: Int) {
        super.init(frame: frame)
        cellWidth = (screenWidth - (edgeMargin * 2)) / 2
        layoutChapter(chapter)
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK:- Chapter Layouts
    func layoutChapter(_ chapter: Int) {
        paragraph.lineSpacing = 1.45
        
        // Make title
        let titleLabel = UITextView()
        titleLabel.font = UIFont.titleFont
        titleLabel.textColor = UIColor.ebonyClay
        titleLabel.configure()
        
        switch chapter {
        case 0:
            //MARK:- Chapter 0
            let t1 = "Welcome to Your Happiness Now"
            titleLabel.text = t1
            addTitle(titleLabel)
            
            let h1 = addHeading(after: titleLabel, level: 2, withText: "Insights and Strategies that deliver the goods.")
            
            let p1 = addParagraph(after: h1, withText: "Hello and welcome to the Your Happiness Now app. This app is one of our efforts to share the life changing value of our research, our writing and our tools. I'll explain the app and its features as we proceed. But please start by watching the welcome video here.")
            
            //TODO: video
            
            let p2 = addParagraph(after: p1, withText: "I am joined by a lot of wonderful, smart, successful and happy people in wishing you great joy. Listen here to one of these people, my good friend James Malinchak featured on abc TV's “The Secret Millionaire”, as he tells you what he thinks about being happy now.")
            
            //TODO: video
            
            let p3 = addParagraph(after: p2, withText: "Alright, let's get right to Your Happiness Now. One of the most simple ways to rate your Happiness right now is to ask yourself a simple question - “Is My Glass Half Full?” While that may seem like an overly simple question the reason is, well, simple. If you perceive your glass, or your life, as half empty then I suspect your energy is being drained. That's right, your energy is being drained by an Energy Vampire. Let me explain in this brief video.")
            
            //TODO: video
            
            let p4 = addParagraph(after: p3, withText: "In the following video I cover some of the tools in the Your Happiness Now app. We've put our best tools and tips into this app. If you take the time to watch the videos and work with the tools, I am confident that you will increase your Happiness now.")
            
            //TODO: video
            
            let p5 = addParagraph(after: p4, withText: "Wellbeing is a Key to your Success. With Wellbeing in your life you will see the reasons to rejoice, you will have the energy to tackle the tasks in front of you and you will be able to relax and sleep peacefully. Your health will improve and joy will be your constant companion. Give me a minute to explain - watch this video.")
            
            //TODO: video
            
            let p6 = addParagraph(after: p5, withText: "Let's talk about the first advanced tool I would like you to try. It's called the Energy Audit. You can find it on the Tools section of the menu, but before you do that, watch this short video on it below.")
            
            //TODO: video
            
            let p7 = addParagraph(after: p6, withText: "Do take the time to go through all the tools in this app, and to watch all the video as well. Combined, these things will really jumpstart your efforts to join the ranks of those who are Happy Now.")
            
            let p8 = addParagraph(after: p7, withText: "Getting Started Exercise: “What makes you happy that money can’t buy”.")
            
            let l1 = addList(after: p8,
                             withItems: ["Think about the question carefully. It’s a big question.",
                                         "Is everything in your life measured by “material things” or can you truly find joy in the smile of a loved one, the health and well being of your family and friends, or the greeting you always receive from your pet?",
                                         "Happiness is not something we can “buy”. As my friend Lisa Cypers Kamen says: “Happiness is an inside job”.",
                                         "Happiness has to start from your mindset, your heart felt connections with yourself and with others.",
                                         "One of the most important things to remember about happiness is that it can be anywhere, anytime – if you choose to look for it.",
                                         "Happiness comes from what we choose to look for, or focus on. When we choose to look at what is working – we choose to look for what contributes to our well being. Wellbeing is one of the secrets to true happiness.",
                                         "Maybe that’s why some of the poorest countries are in fact the happiest. Money, alone, does not create happiness."],
                             listStyle: .bullet)
            
            let p9 = addParagraph(after: l1, withText: "Getting Started Exercise: “Can you name the HAPPINESS TRAPS” in your life?\n“Happiness Traps” are usually the things we believe will make us happy or happier.\nHappiness Traps will change with age and are different for males and females, across generations and cultures.\nHappiness Traps apply at work and at home.\nThe funny thing about “Happiness Traps” is – they can make us unhappy or reduce our overall happiness even after we have achieved them. Why? Because we often focus on the “achievement” of the goal and not the “experience” or the “joy” of the moment once the task is done.\n“Happiness Traps” are usually “things” or “goals” in life that mark both our social and cultural traditions of success. Here are some examples to get you thinking...")
            
            let l2 = addList(after: p9,
                             withItems: ["Graduation",
                                         "Money",
                                         "Job(s)/Job Type",
                                         "Relationships/Marriage",
                                         "Family/Children",
                                         "Having/Owning a home",
                                         "Getting promoted",
                                         "Vacations"],
                             listStyle: .bullet)
            
            let p10 = addParagraph(after: l2, withText: "Too often we put our faith in the goal of “buying or acquiring” something that we think will bring us greater happiness, when in fact it may actually make us less happy when the “bill” comes or we over-reach and have to scale back somewhere else to make ends meet. “Happiness Traps” can be resolved by “naming them to tame them”. Once we can identify these traps we can become more aware of how they can hinder or help our overall level of happiness and ultimately our life satisfaction. By taking a moment to list the Happiness Traps you fall into – the more aware you will become.\n\nNow you can learn how to watch out for them and make an effort to avoid them or get back on track if they derail you. No surprise, life happens and we are all human. There is no magic trick or one answer that makes us all happy. That’s the beauty of this app. You can learn to understand more about yourself, what makes you a happy person and then take small steps over time to increase your happiness until you feel you have mastered your ability to maintain your level of happiness. Now read that again... YOUR LEVEL OF HAPPINESS... not anyone else’s. Remember, this is an app for YOUR HAPPINESS NOW. You can share it and pass it along (and I hope you do) but it’s always about YOU. Only you can be responsible for your own HAPPINESS. Now, let’s get started by becoming aware, understanding, and improving your happiness now.\n\nFor more advanced exercises go to the TOOLS menu. Review the TOOLS that are right for your needs at WORK or AT HOME, including Making It To The Top, HAPPINESS TRAPS and TIPS.")
            break
        default:
            break
        }
        
    }
    
    func addTitle(_ titleLabel: UITextView) {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalToSuperview().inset(edgeMargin)
            make.centerX.equalToSuperview()
        }
    }
    /*
    func addMovieButton(after: UIView) -> UIView {
        let buttonView = UIView()
        let movieButton = UIButton(frame: CGRect(x: 0, y: 0, width: screenWidth - (edgeMargin * 2), height: 64))
        movieButton.setTitle("Watch Video", for: .normal)
        movieButton.setTitleColor(UIColor.ebonyClay, for: .normal)
        buttonView.addSubview(movieButton)
        buttonView.layer.cornerRadius = 8
        buttonView.layer.borderWidth = 1
        buttonView.layer.borderColor = UIColor.loblolly.cgColor
        addSubview(buttonView)
        buttonView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.height.equalTo(64)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin * 2)
        }
        movieButton.addTarget(self, action: #selector(watchVideo), for: .touchUpInside)
        return buttonView
    }
    */
    
    func addHeading(after: UIView, level: Int, withText hText: String) -> UIView {
        var headingStyle: Style
        var topMargin: CGFloat = edgeMargin
        switch level {
        case 1:
            headingStyle = titleStyle
        case 2:
            headingStyle = subtitleStyle
        case 3:
            headingStyle = h3
        default:
            headingStyle = titleStyle
        }
        let styledText = hText
            .style(tags: [hb])
            .styleAll(headingStyle)
            .attributedString
        let headingView = UITextView()
        headingView.attributedText = styledText
        headingView.configure()
        addSubview(headingView)
        headingView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(topMargin)
        })
        return headingView
    }
    
    func addParagraph(after: UIView, withText pText: String) -> UIView {
        let styledText = pText
            .style(tags: [i, b])
            .styleAll(bodyStyle.paragraphStyle(paragraph))
            .attributedString
        let pView = UITextView()
        pView.attributedText = styledText
        pView.configure()
        addSubview(pView)
        pView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom)
        }
        return pView
    }
    
    func addHorizontalRule(after: UIView) -> UIView {
        let hRule = UIView()
        hRule.backgroundColor = UIColor.athensGray
        addSubview(hRule)
        hRule.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin)
            make.height.equalTo(2)
        })
        return hRule
    }
    
    func addQuote(after: UIView, withText qText: String) -> UIView {
        let styledText = qText
            .style(tags: [qb, qi])
            .styleAll(quoteStyle)
            .attributedString
        
        let quoteText = UITextView()
        quoteText.attributedText = styledText
        quoteText.configure()
        let quoteView = UIView()
        addSubview(quoteView)
        quoteView.backgroundColor = UIColor.athensGray
        
        quoteView.addSubview(quoteText)
        quoteText.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalToSuperview().inset(edgeMargin)
        })
        
        quoteView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(after.snp.bottom)
            make.bottom.equalTo(quoteText.snp.bottom).offset(edgeMargin)
        })
        
        return quoteView
    }
    
    func addList(after: UIView, withItems items: [String], listStyle: ListStyle) -> UIView {
        // make paragraph style
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .left, location: 16, options: NSDictionary() as! [String : Any])]
        paragraphStyle.defaultTabInterval = 16
        paragraphStyle.firstLineHeadIndent = 0
        paragraphStyle.headIndent = 16
        
        var marker = "\u{2022} "
        
        // set up the strings, add bullets and style
        let fullString: NSMutableAttributedString = ""
            .styleAll(bodyStyle)
            .attributedString as! NSMutableAttributedString
        for (index, item) in items.enumerated() {
            if listStyle == .number { marker = "\(index + 1). " }
            let formattedString = (marker + "\(item)\n")
                .style(tags: [b, i])
                .styleAll(listItemStyle.paragraphStyle(paragraphStyle))
                .attributedString
            fullString.append(formattedString)
        }
        
        // configure the view
        let listView = UITextView()
        listView.attributedText = fullString
        listView.configure()
        addSubview(listView)
        listView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom)
        })
        
        return listView
    }
    
    func addTable(after: UIView, withData data: [String]) -> UIView {
        // make a view for each item in data array
        var cells: [UIView] = []
        for cellText in data {
            // make styled text
            let styledText = cellText
                .style(tags: [ti, tb])
                .styleAll(tableStyle)
                .attributedString
            
            // create view for text
            let cellTextView = UILabel()
            cellTextView.attributedText = styledText
            cellTextView.numberOfLines = 0
            
            // create view to hold textview and draw border
            let cellView = UIView()
            cellView.layer.borderColor = UIColor.loblolly.cgColor
            cellView.layer.borderWidth = 0.5
            cellView.addSubview(cellTextView)
            cellTextView.snp.makeConstraints({ (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.height.equalTo(48)
                make.top.equalToSuperview()
            })
            
            cells.append(cellView)
        }
        
        let tableView = UIView()
        tableView.layer.borderColor = UIColor.loblolly.cgColor
        tableView.layer.borderWidth = 1.0
        tableView.layer.cornerRadius = 3.0
        tableView.clipsToBounds = true
        addSubview(tableView)
        tableView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin)
            make.height.equalTo(CGFloat(cells.count) * cellHeight)
        })
        
        let table = UIStackView(arrangedSubviews: cells)
        table.axis = .vertical
        table.distribution = .fillEqually
        table.alignment = .fill
        table.spacing = 0
        tableView.addSubview(table)
        table.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(CGFloat(cells.count) * cellHeight)
        })
        
        return tableView
    }
    
    func addMultiTable(after: UIView, withData data: [[String]]) -> UIView {
        // make a view for each item in data array
        var rows: [UIView] = []
        
        var tableHeight:CGFloat = 0
        
        for row in data {
            
            var rowHeight:CGFloat = 0
            
            var columns: [UIView] = []
            for cellText in row {
                // make styled text
                let styledText = cellText
                    .style(tags: [ti, tb])
                    .styleAll(tableStyle)
                    .attributedString
                
                // create view for text
                let cellTextView = UILabel()
                cellTextView.attributedText = styledText
                cellTextView.numberOfLines = 0
                //cellTextView.lineBreakMode = .byWordWrapping
                
                // create view to hold textview and draw border
                let cellView = UIView()
                cellView.layer.borderColor = UIColor.loblolly.cgColor
                cellView.layer.borderWidth = 0.5
                cellView.addSubview(cellTextView)
                
                // find max label size
                let maxLabelSize = CGSize(width: cellWidth - (edgeMargin * 2), height: CGFloat.greatestFiniteMagnitude)
                let expectedLabelSize = styledText.boundingRect(with: maxLabelSize, options:[.usesLineFragmentOrigin, .usesFontLeading], context: nil).size.height + (edgeMargin * 2)
                let finalLabelSize = max(expectedLabelSize, cellHeight)
                
                cellTextView.snp.makeConstraints({ (make) in
                    make.left.equalToSuperview().inset(edgeMargin)
                    make.right.equalToSuperview().inset(edgeMargin)
                    make.center.equalToSuperview()
                })
                
                columns.append(cellView)
                if finalLabelSize > rowHeight {
                    rowHeight = finalLabelSize
                }
            }
            let rowTable = UIStackView(arrangedSubviews: columns)
            rowTable.axis = .horizontal
            rowTable.distribution = .fillEqually
            rowTable.alignment = .fill
            rowTable.spacing = 0
            rowTable.snp.makeConstraints({ (make) in
                make.height.equalTo(rowHeight)
            })
            rows.append(rowTable)
            tableHeight = tableHeight + rowHeight
        }
        
        let tableView = UIView()
        tableView.layer.borderColor = UIColor.loblolly.cgColor
        tableView.layer.borderWidth = 1.0
        tableView.layer.cornerRadius = 3.0
        tableView.clipsToBounds = true
        addSubview(tableView)
        tableView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin)
            make.height.equalTo(tableHeight)
        })
        
        let table = UIStackView(arrangedSubviews: rows)
        table.axis = .vertical
        table.distribution = .equalSpacing
        table.alignment = .fill
        table.spacing = 0
        tableView.addSubview(table)
        table.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
        })
        
        return tableView
    }
    
    /*
    func watchVideo(at) {
        chapterDelegate.watchVideo()
    }
    */
}
