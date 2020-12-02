//
//  WebView.swift
//  H4X0R News
//
//  Created by Juan Diego Ocampo on 02/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

// MARK: -  WebView()

struct WebView: UIViewRepresentable {
    /// Tag: Variables
    let urlString: String?
    /// Tag: makeUIView()
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    /// Tag: updateUIView()
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
