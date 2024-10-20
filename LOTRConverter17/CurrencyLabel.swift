//
//  CurrencyLabel.swift
//  LOTRConverter17
//
//  Created by Misho's Mac on 20.10.24.
//

import SwiftUI
struct CurrencyLabel: View {
    let currencyName: String
    let currencyImage: ImageResource
    let onTapAction: () -> Void
    
    var body: some View {
        HStack {
            Text(currencyName)
                .font(.headline)
                .foregroundStyle(.white)
            Image(currencyImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
        .padding(.bottom, -5)
        .onTapGesture {
            onTapAction()
            
            
            #Preview {
                CurrencyLabel(
                    currencyName: "George",
                    currencyImage: .georgeicon,
                    onTapAction: {
                        print("Pressed")
                    }
                )
            }
        }
    }
}

