//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ivan Gonzalez on 16/03/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    fileprivate func frameworkDescription() -> some View {
        return Text(framework.description)
            .font(.body)
            .padding()
    }
    
    var body: some View {
    
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            frameworkDescription()
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ??  URL(string: "www.apple.com")!)})
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
