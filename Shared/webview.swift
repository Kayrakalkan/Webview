//
//  webview.swift
//  WebView
//
//  Created by Kayra Kalkan on 30.06.2022.
//

import Foundation
import SwiftUI
import WebKit

struct webview: UIViewRepresentable {
    
    var url : String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    
    func updateUIView(_ uiView: webview.UIViewType, context: UIViewRepresentableContext<webview>) {
        
    }
}
