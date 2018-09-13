//
//  SP_HomePage.swift
//  KeralaOne
//
//  Created by Shahal.ns on 31/07/18.
//  Copyright © 2018 Shahal.ns. All rights reserved.
//

import UIKit
import WebKit

class SP_HomePage: ViewController,WKUIDelegate {

    @IBOutlet weak var CurrentButton: UIButton!
    @IBOutlet weak var PhoneButton: UIButton!
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    var webView :WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickedCurrentButton(_ sender: Any) {
        print("onClickedCurrentButton >>")
        ActivityIndicator.startAnimating()
        view.bringSubview(toFront: ActivityIndicator)
        let myURL = URL(string:"https://wss.kseb.in/selfservices/quickpay")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        view = webView
        print("onClickedCurrentButton <<")
    }
    
    @IBAction func onClickedPhoneButton(_ sender: Any) {
        print("onClickedPhoneButton >>")
        ActivityIndicator.startAnimating()
        view.bringSubview(toFront: ActivityIndicator)
        let myURL = URL(string:"https://portal2.bsnl.in/myportal/cfa.do")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        view = webView
        print("onClickedPhoneButton <<")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("WKWebView didFinishLoading >>")
        ActivityIndicator.stopAnimating()
    }
    
    /*
    func webView(_ webView: WKWebView,
                 didFinish navigation: WKNavigation!) {
        print("loaded")
    }
 */
    
    /*
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
 */
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
