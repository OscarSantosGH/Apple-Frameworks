//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Oscar Santos on 11/5/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack{
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
