//
//  FrameworksGridViewModel.swift
//  Apple Frameworks
//
//  Created by Oscar Santos on 11/6/20.
//

import SwiftUI

final class FrameworksGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
