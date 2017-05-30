//
//  UIWebView-loadPDF.swift
//  Your Happiness Now
//
//  Created by Chris Slowik on 5/30/17.
//  Copyright © 2017 Six Voices. All rights reserved.
//

import WebKit

extension UIWebView {
    
    func loadPDF(_ filename: String) {
        if let pdf = Bundle.main.url(forResource: filename, withExtension: "pdf", subdirectory: nil, localization: nil)  {
            let req = URLRequest(url: pdf)
            self.loadRequest(req)
        }
    }
    
}

extension WKWebView {
    
    func loadPDF(_ filename: String) {
        if let pdf = Bundle.main.url(forResource: filename, withExtension: "pdf", subdirectory: nil, localization: nil)  {
            let req = URLRequest(url: pdf)
            self.load(req)
        }
    }
    
}
