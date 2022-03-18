//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Ivan Gonzalez on 17/03/22.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    //Is going to make the uiviewcontroller that is take the place of our body in our view
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}
