//
//  ExchangeInfo.swift
//  LOTRConverter17
//
//  Created by Misho's Mac on 18.09.24.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                HStack{
//                    Left currency img
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
//                    exchange rate text
                    Text("1 Gold Piece = 4 Gold Pennies")
//                    right currency img
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
//                Done btn
                Button("Done"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ExchangeInfo()
}
