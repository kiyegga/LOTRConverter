//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by kiyegga francis on 2024-12-17.
//

import SwiftUI

struct ExchangeRateView: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    var body: some View {
        HStack{
            //Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Exchange rate text
            Text(text)
            
            //Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRateView(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}

