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
            
            _ = addParagraph(after: l2, withText: "Too often we put our faith in the goal of “buying or acquiring” something that we think will bring us greater happiness, when in fact it may actually make us less happy when the “bill” comes or we over-reach and have to scale back somewhere else to make ends meet. “Happiness Traps” can be resolved by “naming them to tame them”. Once we can identify these traps we can become more aware of how they can hinder or help our overall level of happiness and ultimately our life satisfaction. By taking a moment to list the Happiness Traps you fall into – the more aware you will become.\n\nNow you can learn how to watch out for them and make an effort to avoid them or get back on track if they derail you. No surprise, life happens and we are all human. There is no magic trick or one answer that makes us all happy. That’s the beauty of this app. You can learn to understand more about yourself, what makes you a happy person and then take small steps over time to increase your happiness until you feel you have mastered your ability to maintain your level of happiness. Now read that again... YOUR LEVEL OF HAPPINESS... not anyone else’s. Remember, this is an app for YOUR HAPPINESS NOW. You can share it and pass it along (and I hope you do) but it’s always about YOU. Only you can be responsible for your own HAPPINESS. Now, let’s get started by becoming aware, understanding, and improving your happiness now.\n\nFor more advanced exercises go to the TOOLS menu. Review the TOOLS that are right for your needs at WORK or AT HOME, including Making It To The Top, HAPPINESS TRAPS and TIPS.")
            break
        case 1:
            //MARK:- Chapter 1
            let t1 = "What Happy Companies Know"
            titleLabel.text = t1
            addTitle(titleLabel)
            
            let p1 = addParagraph(after: titleLabel, withText: "Happiness = Profits.\n\nHere's a simple fact that has been proven again and again. An investment in people practices to improve their talent results in higher satisfaction on the job and happier, higher performing employees. Happier employees can improve performance across the board. Here are some remarkable statistics to think about.")
            
            let l1 = addList(after: p1,
                             withItems: ["Good people practices can triple shareholder value over five years: 21-64%.",
                                         "Firms with great people can outperform comparable offices by 52-300%.",
                                         "High people loyalty can create returns of 30-50%.",
                                         "Companies with a clearly articulated reward strategy have 13% lower turnover."],
                             listStyle: .bullet)
            //TODO: video
            
            let p2 = addParagraph(after: l1, withText: "Happy and successful companies leave clues about how they do it. So the study of these companies is worthy of your effort. Our highly acclaimed book What Happy Companies Know (with Dan Baker and Collins Hemingway) will walk you through the clues and show you exactly how they do it. You can find that book and my other award winning books on Books menu.")
            
            //TODO: video
            
            let p3 = addParagraph(after: p2, withText: "The Principles that Happy Companies leverage to create Happy Employees can be easily remembered by using the acronym HAPIE. Each letter is one key to a practice that can lead to increases in overall Happiness, which we know can lead to increases in profits. These principles are practical, easy to follow and can lead to greater success on all fronts. Start by applying one principle a week.")
            
            let l2 = addList(after: p3, withItems: ["<b>H</b>eartfelt Leadership", "<b>A</b>daptive Products and Services", "<b>P</b>rofit With People (ROP = Return on <b>P</b>eople)", "<b>I</b>nvigorated Stakeholders become markers", "<b>E</b>ngaged Community Partners"], listStyle: .bullet)
            
            let p4 = addParagraph(after: l2, withText: "HERE IS THE HAPPINESS FORMULA: \n<b>H = S + C + V</b>")
            
            let l3 = addList(after: p4,
                             withItems: ["<b>H</b> = your level of happiness overall",
                                         "<b>S</b> = your set point for happiness (like your weight, possibly a genetic predisposition)",
                                         "<b>C</b> = current conditions such as financial stability, living conditions or health",
                                         "<b>V</b> = voluntary activities and behaviors you choose (actions you can control)"],
                             listStyle: .bullet)
            
            let p5 = addParagraph(after: l3, withText: "BE AWARE! There are 6 Key Happiness Traps that you must deal with directly. These traps are not worth staying in for another minute. Remember Life Starts at the end of your comfort zone. Traps are comfortable, but they are not Life at its Best.")
            
            let l4 = addList(after: p5,
                             withItems: ["I am what I do - Value who you are",
                                         "Resentment – Truly let go, forgive",
                                         "Self-doubt – Trust your voice",
                                         "Whose needs? – Your needs",
                                         "Money Matters – Work has meaning",
                                         "Setting your Pace – Life on your time"],
                             listStyle: .bullet)
            
            let p6 = addParagraph(after: l4, withText: "Happiness and the Paradox of Profits.\n\nOne thing we know about happiness is that you probably won’t get it if you seek it directly. That's simply not how it works. If you do seek it directly you will probably discover that your own happiness is the cost of that search.\n\nHappiness is a natural “by product” of seeking “other things” in life, when we pursue these things we will achieve happiness...")
            
            let l5 = addList(after: p6, withItems: ["Purpose", "Love", "Generosity", "Service (to others)", "Friendship", "Compassion"], listStyle: .bullet)
            
            let h1 = addHeading(after: l5, level: 3, withText: "Profits behave the same way as Happiness, profits are a by-product of purpose.")
            
            let p7 = addParagraph(after: h1, withText: "Company founders usually set the deeper purpose of the business for the Shareholders, Teams, Investors and Customers; but they do not control it. Purpose evolves from “Values” over the lifetime of a company. Purpose motivates others to their highest potential. Consider these powerful company purposes:")
            
            let l6 = addList(after: p7, withItems: ["The good - Southwest, Container Store",
                                                    "The true - Google, Wikipedia",
                                                    "The beautiful - Apple Computer",
                                                    "The heroic - Grameen Bank to abolish poverty (Mohammad Yunus)"],
                             listStyle: .bullet)
            
            _ = addParagraph(after: l6, withText: "For more advanced exercises feel free go to the TOOLS menu. Suggested TOOLS for being Happier on the Job: Making it to the Top, CAMPS, FAST and the Abundance Audit.\n\nNow you know a bit more about What Happy Companies Know.  ")
            
            break
        case 2:
            //MARK:- Chapter 2
            let t1 = "What Happy Working Mothers Know"
            titleLabel.text = t1
            addTitle(titleLabel)
            
            let h1 = addHeading(after: titleLabel, level: 2, withText: "Finding a Healthy and Happy Work/Life Balance.")
            
            let p1 = addParagraph(after: h1, withText: "After surveying and interviewing over 1,000 Working Moms and applying our knowledge in What Happy Companies Know and What Happy Women Know, we've developed some key insights into What Happy Working Mothers Know. It's our great pleasure to share these insights with you here.\n\nOne major discovery from our research is that **men fear not having enough** while **women fear not being enough**. This fear is a major block to happiness and yes it can be overcome. Let me suggest that the first step in breaking fear's ability to block your joy is to name it for what it is: False Evidence Appearing Real.")
                
                //TODO: video http://s3.amazonaws.com/sixvoices.video/happyapp/9.m4v
            
            let p2 = addParagraph(after: p1, withText: "Watch this video where I explain our FEAR Audit tool. You can find this powerful Audit in the Tools section of the app or on our website. No matter where you get it from, use it! And share it!\n\nOnce we've put fear in its place - being out of your life - the obvious question becomes what are the elements of Happiness? To best describe that we use an acronym - HAPPY. That's going to be easy to remember!")
            
            //TODO: video http://s3.amazonaws.com/sixvoices.video/happyapp/11.m4v) 
            
            let l1 = addList(after: p2,
                             withItems: ["<b>H</b>ealthy (emotionally and physically)",
                                         "<b>A</b>daptive",
                                         "<b>P</b>roud of Work",
                                         "<b>P</b>roud of Family",
                                         "<b>Y</b>oung at Heart"],
                             listStyle: .bullet)
            let p3 = addParagraph(after: l1, withText: "On our journey to Happiness we discover that this is a path that has been taken by many before us. Those who have gone before have identified the pitfalls on the path and by doing so they have paid-it-forward to you and I. Once you know the pitfalls you can see them coming and with some new tools you'll be able avoid them completely. Watch the video below to listen to me talk about the Will To Coach. In it I'll name three big pitfalls.")
            
            //TODO: video(http://s3.amazonaws.com/sixvoices.video/happyapp/12.m4v)
            
            let p4 = addParagraph(after: p3, withText: "Getting Started Exercise:\n\nWhat one small thing can you do every day to increase your health? (Tip: eat less salt, less sugar, drink more water)\n\nWhat one thing can you be more flexible about to increase “adapting” to situations you cannot always control?\n\nWhat 15 seconds of the day can you recall that made you feel proud at work – small or large – the effort paid off?\n\nWhat can you pause and laugh about today? If it includes laughing at yourself, even better. If you can share the moment and make someone else laugh – go for it.\n\nBE AWARE! The following Working Mothers Happiness Traps are often reinforced by society and even, remarkably, by our own families. You must rely on your intuition, your strength and your beautiful self to get out of these traps.")
                
            let l2 = addList(after: p4,
                             withItems: ["Supermom",
                                         "Money matters",
                                         "Whose needs",
                                         "Resentment",
                                         "I am what I do",
                                         "Self-doubt"],
                             listStyle: .bullet)
            
                
            let h2 = addHeading(after: l2, level: 3, withText: "Happiness Tips")
            
            let p5 = addParagraph(after: h2, withText: "Let me share with you now several tips for increasing your Happiness Now. Combined with your FEAR Audit and knowing the pitfalls on the path, these tips will give you the insights you need to make significant gains immediately.")
                
            let l3 = addList(after: p5,
                             withItems: ["Half the battle in life is choosing something you love to do. The other half is celebrating your successes along the way.",
                                         "You may take a different path from the one you envisioned, but the detours are worth it because you learn more from your failures than from your successes.",
                                         "Happiness begins when you learn to accept the fact that you’re loved and valued for who you are, not what you do.",
                                         "Choosing your own path is always a good thing--no matter what you choose.",
                                         "If you choose to be a stay-at-home mom for a while, don’t stop dreaming for yourself.",
                                         "Happiness comes from a full, balanced life that includes hard work, time with loved ones and friends, exercise, celebration, and even solitude. Skimp on any of the ingredients, and your recipe for happiness could fall flat.",
                                         "If you realize that you're not perfect and allow yourself a few mistakes, you'll go a long way toward being happy.",
                                         "Set the same standards for yourself that you apply to your loved ones; cut yourself the same slack you give others.",
                                         "We have to learn to love ourselves, whatever choice we make."],
                             listStyle: .bullet)
            _ = addParagraph(after: l3, withText: "For more advanced exercises feel free go to the TOOLS menu. Suggested TOOLS for Happier Working Mothers or FATHERS: Making it to the Top, CAMPS and FAST.")
            
            break
        case 3:
            //MARK:- Chapter 3
            let t1 = "What Happy Women Know"
            titleLabel.text = t1
            addTitle(titleLabel)
            
            let h1 = addHeading(after: titleLabel, level: 2,  withText: "Live A Life Worthy of Celebration")
            
            let p1 = addParagraph(after: h1, withText: "The story we tell ourselves, the one about ourselves, drives everything we do. It has been famously said that you cannot outperform your own self-image. Well, your story is your self-image. You'll be delighted and relived to know that you can change your story at any time however. So if you're not living the life of happiness that you know you should be, know that it can change by changing your story. Let me tell how in this brief video.")
            
            //TODO: video (http://s3.amazonaws.com/sixvoices.video/happyapp/8.m4v).
            
            let p2 = addParagraph(after: p1, withText: "A truly great method of changing your story in any area of your life is through the use of tools designed for that specific purpose. I've spent many years putting these kinds of tools together. One of these I call the FAST Audit and I've put it in this app for you. The FAST Audit will help you change your thinking in the area of abundance, and that my friend, can rewrite your story in remarkable ways. Watch this video where I explain the FAST audit.")
            
            //TODO: video ("http://s3.amazonaws.com/sixvoices.video/happyapp/13.m4v) where I explain the FAST Audit.
            
            let p3 = addParagraph(after: p2, withText: "Getting Started Exercise: Telling Your Powerful, Positive Story")
            let l1 = addList(after: p3,
                             withItems: ["Practice a number of stories and pick one to focus on for this exercise. You can repeat the process as needed for more stories.",
                                         "Think of a time when your gifts really made a difference in the life of someone who needed it (at work or at home).",
                                         "Write down the “talents” you used and the experience or wisdom you shared to help someone else, or how you made their situation better.",
                                         "The key is focusing on the “good it did” for someone else and then how it made you a better, happier, more fulfilled person as a result.",
                                         "Now tell yourself the story over and over until you feel comfortable telling the story from your point of view focused on the right qualities you want others to value.",
                                         "Share as often as possible."],
                             listStyle: .bullet)
            
            let p4 = addParagraph(after: l1, withText: "BE AWARE! There are several Happiness Traps that are especially easy for women to get snared by. Here they are... don't be surprised to find something on this list that resonates for you. “Name it to tame it!”")
            
            let l2 = addList(after: p4,
                             withItems: ["Perfectionism",
                                         "People Pleasing",
                                         "Wanton Wanting",
                                         "Holding a Grudge",
                                         "What would I be without “X”",
                                         "Circling the Career Track"],
                             listStyle: .bullet)
            let p5 = addParagraph(after: l2, withText: "With your new story in place, or underway, your destination is clear - The Top. Making It To The Top isn't just a dream anymore, it's guaranteed. Think about it, if you are living a life filled with joy, filled with happiness, isn’t that the top? It is! And you deserve it my friend. You most certainly deserve it. Let me share with you now a video that explains this a bit more.")
            
            //TODO: video (http://s3.amazonaws.com/sixvoices.video/happyapp/14.m4v)
            
            _ = addParagraph(after: p5, withText: "Go to the TOOLS menu to discover more tools for Being Happy Now.")
            
            break
        case 4:
            //MARK:- Chapter 4
            let t1 = "What Happy Coaches Know"
            titleLabel.text = t1
            addTitle(titleLabel)
            
            let h1 = addHeading(after: titleLabel, level: 2, withText: "Think you've mastered it? Try sharing it!")
            
            let q1 = addQuote(after: h1, withText: "“Coaching is unlocking a person’s potential to maximize their own performance. It is helping them to learn rather than teaching them.” <i>John Whitmore, Coaching for Performance, 2002</i>")
            
            let q2 = addQuote(after: q1, withText: "“Enabling another’s success and progress by helping them achieve desired growth”. <i>Accenture Learning, Coaching Handbook</i>")
            
            let p1 = addParagraph(after: q2, withText: "Are Coaching And Mentoring The Same? No, they are not the same and we'll look at the unique qualities of them both. In our research we looked at both and here's the key piece of insight I want you to understand - <i>Mentors that use more Coaching Skills build more authentic and effective mentoring partnerships</i>.")
            
            let h2 = addHeading(after: p1, level: 3, withText: "What Mentors Do")
            
            let l1 = addList(after: h2,
                             withItems: ["Mentors are external guides providing footsteps for their protégés to follow or learn from and sharing the wisdom of their years.",
                                         "Generally from the same industry and career path.",
                                         "Relationships generally grow out of a connection that is deeper than the typical senior-junior relationships and is not very structured."],
                             listStyle: .bullet)
            
            let h3 = addHeading(after: l1, level: 3, withText: "What Coaches Do")
            
            let l2 = addList(after: h3,
                             withItems: ["A Coach is a wise questioner who helps the client access their inner wisdom.",
                                         "A Coach does not necessarily come from the same field and may not have deep knowledge about the content of the client’s work.",
                                         "A Coach is often hired and the relationship between coach and client is a structured, working relationship based on the client’s goals."],
                             listStyle: .bullet)
            
            let h4 = addHeading(after: l2, level: 3, withText: "Barriers To Successful Coaching")
            
            let l3 = addList(after: h4,
                             withItems: ["I’ve done this for years.",
                                         "I’m concerned I won’t do well.",
                                         "This approach is too soft and unstructured.",
                                         "The company culture won’t support it.",
                                         "It takes too long.",
                                         "They expect to be told",
                                         "I’ll lose my authority/position and being seen as expert."],
                             listStyle: .bullet)
            
            let p2 = addParagraph(after: l3, withText: "Coaching is not something that can effectively be done without a few key fundamentals being established. Here's the short list. Get these traits and skills down pat and your coaching will be effective and fun.")
            
            let l4 = addList(after: p2,
                             withItems: ["The ability to establish a trusting environment.",
                                         "The ability to ask questions that enable others to become aware of their own thinking which stimulates action(s) and yields results.",
                                         "A genuine concern for their well-being during and after the coaching."],
                             listStyle: .bullet)
            
            let p3 = addParagraph(after: l4, withText: "We've covered a lot of ideas in this, Your Happiness Now app. But there's more to explore still. Please watch this video and let me explain a bit more of it. Don't forget to visit our websites too, like all the resources the links are in the menu.")
            
            //TODO: Video (http://s3.amazonaws.com/sixvoices.video/happyapp/15.m4v)
 
            _ = addHeading(after: p3, level: 2, withText: "Go be happy!")
            
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
    
    func addMovieButton(after: UIView, atURL videoUrl: String, posterImage: UIImage) -> UIView {
        let width = screenWidth - (edgeMargin * 2)
        let height = 210 * (width / screenWidth)
        let movieButton = UIButton(frame: CGRect(x: 0, y: 0, width: width, height: height))
        movieButton.setImage(posterImage, for: .normal)
        addSubview(movieButton)
        movieButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.height.equalTo(64)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin * 2)
        }
        movieButton.addTarget(self, action: #selector(watchVideo(atURL:)), for: .touchUpInside)
        return movieButton
    }
    
    func addHeading(after: UIView, level: Int, withText hText: String) -> UIView {
        var headingStyle: Style
        let topMargin: CGFloat = edgeMargin
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
    
    
    func watchVideo(atURL videoURL: String) {
        chapterDelegate.watchVideo(atURL: videoURL)
    }
    
}
