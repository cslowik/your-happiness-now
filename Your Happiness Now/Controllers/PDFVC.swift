//
//  PDFVC.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/30/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import UIKit
import WebKit

class PDFVC: UIViewController, WKUIDelegate {
    
    var fileName: String!
    var webView: WKWebView!
    
    
    init(withPDF pdf: String) {
        super.init(nibName: nil, bundle: nil)
        fileName = pdf
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadPDF(fileName)
    }
}

