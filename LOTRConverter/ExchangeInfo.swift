//
//  SwiftUIView.swift
//  LOTRConverter
//
//  Created by kiyegga francis on 2024-12-17.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            //Background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                //Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    
                    
                
                //Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                //Exchange rates
                ExchangeRateView(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                ExchangeRateView(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver pieces", rightImage: .silverpiece)
                ExchangeRateView(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                ExchangeRateView(leftImage: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", rightImage: .copperpenny)
                
                
                //Done button
                Button("Done"){
                    dismiss()
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .padding()
                .font(.largeTitle)
                .foregroundStyle(.white)
                
                
                
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

