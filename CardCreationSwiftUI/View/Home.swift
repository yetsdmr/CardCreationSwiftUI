//
//  Home.swift
//  CardCreationSwiftUI
//
//  Created by Yunus Emre Taşdemir on 6.07.2023.
//

import SwiftUI

struct Home: View {
    // View Properties
    @FocusState private var activeTF: ActiveKeyboardField!
    @State private var cardNumber: String = ""
    @State private var cardHolderName: String = ""
    @State private var cvvCode: String = ""
    @State private var expireDate: String = ""
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
            CardView()
            
            Spacer(minLength: 0)
        }
        .padding()
    }
    
    @ViewBuilder
    func CardView() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.linearGradient(colors: [
                    Color("CardGradient2"),
                    Color("CardGradient1")
                ], startPoint: .topLeading, endPoint: .bottomTrailing))
        
            // Card Details
            VStack(spacing: 10) {
                HStack {
                    TextField("XXXX XXXX XXXX XXXX", text: $cardNumber)
                        .font(.title3)
                        .keyboardType(.numberPad)
                        .focused($activeTF, equals: .cardNumber)
                    
                    Spacer(minLength: 0)
                    
                    Image("Visa")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 20)
                }
                
                HStack(spacing: 12) {
                    TextField("MM/YY", text: $expireDate)
                        .keyboardType(.numberPad)
                        .focused($activeTF, equals: .expirationDate)
                    
                    Spacer(minLength: 0)
                    
                    TextField("CVV", text: $cvvCode)
                        .frame(width: 35)
                        .focused($activeTF, equals: .cvv)
                        .keyboardType(.numberPad)
                    
                    Image(systemName: "questionmark.circle.fill")
                }
                .padding(.top, 15)
                
                Spacer(minLength: 0)
                
                TextField("CARD HOLDER NAME", text: $cardHolderName)
                    .focused($activeTF, equals: .cardHolderName)
                
            }
            .padding(20)
            .environment(\.colorScheme, .dark)
            .tint(.white)
        }
        .frame(height: 200)
        .padding(.top, 35)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
