//
//  XDismissButton.swift
//  Apple Frameworks
//
//  Created by Oscar Santos on 11/6/20.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingModal: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingModal = false
            } label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundColor(Color(.label))
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingModal: .constant(false))
    }
}
