//
//  ViewController.swift
//  taxiflughafen
//
//  Created by Bogdan on 11/19/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activieyIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        activieyIndicator.hidesWhenStopped = true
        activieyIndicator.startAnimating()
        
        let url = URL(string: "http://www.wien-taxiflughafen.at/")!
        webView.loadRequest(URLRequest(url: url))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        NSLog("did start load")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        NSLog("did finish load")
        activieyIndicator.stopAnimating()
    }
}
