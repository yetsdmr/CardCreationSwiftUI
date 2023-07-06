//
//  Home.swift
//  CardCreationSwiftUI
//
//  Created by Yunus Emre Taşdemir on 6.07.2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            // Header View
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundColor(.black)
                }

                Text("Add Card")
                    .font(.title3)
                    .padding(.leading, 10)
                
                Spacer(minLength: 0)
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .font(.title2)
                }
            }
            
            // Card View
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
