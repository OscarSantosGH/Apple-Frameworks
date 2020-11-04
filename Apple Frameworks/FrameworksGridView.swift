//
//  FrameworksGridView.swift
//  Apple Frameworks
//
//  Created by Oscar Santos on 11/4/20.
//

import SwiftUI

struct FrameworksGridView: View {
    var body: some View {
        FrameworkTitleView(imageName: "app-clip", name: "App Clips")
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView()
    }
}

struct FrameworkTitleView: View {
    
    var imageName: String
    var name: String
    
    var body: some View{
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.6)
        }
    }
}
