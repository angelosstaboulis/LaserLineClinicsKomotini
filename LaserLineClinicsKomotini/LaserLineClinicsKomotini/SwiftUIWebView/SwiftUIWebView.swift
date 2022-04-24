//
//  SwiftUIWebView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 25/4/22.
//

import Foundation
import UIKit
import WebKit
import SwiftUI
final class SwiftUIWebView:UIViewRepresentable{
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        webView.load(URLRequest(url:URL(string: "https://goo.gl/maps/ruWoFxTopyYSjnQ59")!))
        return webView
    }
 
}
