//
//  GenerateAReportViewController.swift
//  PocketCA
//
//  Created by Hissah on 22/9/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit
import WebKit

class GenerateAReportViewController: UIViewController, WKUIDelegate  {
    
    @IBOutlet weak var pdfViewer: WKWebView!
    
    @IBOutlet weak var progressLoader: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pdfViewer.uiDelegate = self
        progressLoader.hidesWhenStopped = true
        
        pdfViewer.uiDelegate = self
        progressLoader.hidesWhenStopped = true
        
        let link = URL(fileURLWithPath: Bundle.main.path(forResource: "report", ofType: "pdf")!)
        let request = URLRequest(url: link)
        pdfViewer.load(request)
        
    }
    
    func webView(_ webView: WKWebView, shouldPreviewElement elementInfo: WKPreviewElementInfo) -> Bool {
        progressLoader.startAnimating()
        return true
    }
    
    func webViewDidClose(_ webView: WKWebView) {
        progressLoader.stopAnimating()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
