//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Misho's Mac on 01.10.24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency : Currency = .silverPenny
    @State var bottomCurrency : Currency = .goldPenny
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
                IconGrid(currency: .silverPiece)
                //                Text
                Text("Selecet currency yoo would like to convert to:")
                    .fontWeight(.bold)
                //                Currency Icons
                IconGrid(currency: .goldPiece)
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
