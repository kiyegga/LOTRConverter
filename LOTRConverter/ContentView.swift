//
//  ContentView.swift
//  LOTRConverter
//
//  Created by kiyegga francis on 2024-12-02.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            //backgroung image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
                
            
            VStack {
                //prancing pony image view
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                //currency exchange text view
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                
                //convertion section
                HStack {
                    //Left conversion section
                    
                    VStack {
                        // currency
                        
                         HStack {
                            
                            //currency image
                             Image(.silverpiece)
                                 .resizable()
                                 .scaledToFit()
                                 .frame(height: 33 )
                             
                            //currency text
                             Text("Silver Piece")
                                 .font(.headline)
                                 .foregroundStyle(.white)
                        }
                         .padding(.bottom, -5)
                        
                        //text feild
                        TextField("amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    //equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                   // Right conversion section
                    
                    VStack {
                        // currency
                        
                         HStack {
                            
                            //currency text
                             Text("Gold Piece")
                                 .font(.headline)
                                 .foregroundStyle(.white)
                             
                            //currency image
                             Image(.goldpiece)
                                 .resizable()
                                 .scaledToFit()
                                 .frame(height: 33)
                                 
                        }
                         .padding(.bottom, -5)
                        
                        //text feild
                        TextField("amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing )
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                
                //info button
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                        print("showExchangeInfo value \(showExchangeInfo)")
                        
                    }label: {
                        
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo){
                        ExchangeInfo()
                    }
                }
                
                
            }
            //.border(.blue)
        }

    }
}

#Preview {
    ContentView()
}
