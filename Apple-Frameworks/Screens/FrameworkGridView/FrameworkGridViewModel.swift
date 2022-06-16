//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ivan Gonzalez on 16/03/22.
//

import SwiftUI

// extending ObservableObject allows this class to broadcast information
class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet{ //everytime a selectedFramework changes, this will be set to true
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),]
    
}
