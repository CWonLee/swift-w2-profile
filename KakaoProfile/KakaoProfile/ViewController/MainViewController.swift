//
//  MainViewController.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/14.
//

import UIKit
import WebKit

class MainViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://m.daum.net")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
