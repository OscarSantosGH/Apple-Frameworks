//
//  FrameworksGridView.swift
//  Apple Frameworks
//
//  Created by Oscar Santos on 11/4/20.
//

import SwiftUI

struct FrameworksGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(MockData.frameworks) { framework in
                FrameworkTitleView(framework: framework)
            }
            
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.6)
        }
    }
}
