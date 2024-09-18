//
//  ExchangeRate.swift
//  LOTRConverter17
//
//  Created by Misho's Mac on 19.09.24.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage : ImageResource
    let text : String
    let rightImage : ImageResource
    var body: some View {
        HStack{
            //                    Left currency img
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            //                    exchange rate text
            Text(text)
            //                    right currency img
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
