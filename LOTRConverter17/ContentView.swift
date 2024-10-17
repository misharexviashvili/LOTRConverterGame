//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Misho's Mac on 18.09.24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showSelectCurrency = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    @FocusState var leftTyping
    @FocusState var rightTyping
    @State var leftCurrency = Currency.silverPiece
    @State var rightCurrency : Currency = .goldPiece
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                HStack{
                    VStack{
                        HStack{
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture{
                            showSelectCurrency.toggle()
                        }
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .focused($leftTyping)
                            .onChange(of: leftAmount){
                                if leftTyping {
                                    rightAmount = leftCurrency.convert(leftAmount, rightCurrency)
                                }
                            }
                    }
                    Image(systemName:"equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    VStack{
                        HStack{
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture{
                            showSelectCurrency.toggle()
                        }
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .focused($rightTyping)
                            .onChange(of: rightAmount){
                                if rightTyping{
                                    leftAmount = rightCurrency.convert(rightAmount, leftCurrency)
                                }
                            }
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                }
                .padding(.trailing)
                .sheet(isPresented:$showExchangeInfo){
                    ExchangeInfo()
                }
                .sheet(isPresented: $showSelectCurrency) {
                    SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
