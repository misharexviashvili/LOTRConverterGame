//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Misho's Mac on 01.10.24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
//            Parchment background iamge
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
//                Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
//                Currency Icons
                LazyVGrid(columns: [GridItem(), GridItem(),GridItem()]){
                    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    CurrencyIcon(currencyImage: .silverpenny, currencyName: "Silver Penny")
                    CurrencyIcon(currencyImage: .silverpiece, currencyName: "Silver Piece")
                    CurrencyIcon(currencyImage: .goldpenny, currencyName: "Gold Penny")
                    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
                }
//                Text
                Text("Selecet currency yoo would like to convert to:")
                    .fontWeight(.bold)
                    
//                Currency Icons
                
//                Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
