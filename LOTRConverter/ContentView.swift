//
//  ContentView.swift
//  LOTRConverter
//
//  Created by kiyegga francis on 2024-12-02.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    
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
                        
                        //text feild
                        Text("Text Field")
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
                        
                        //text feild
                        Text("Text Field")
                    }
                }
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
                }
                
                
            }
            //.border(.blue)
        }

    }
}

#Preview {
    ContentView()
}
