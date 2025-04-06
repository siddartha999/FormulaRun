//
//  ContentView.swift
//  FormulaRun
//
//  Created by Tummala, Siddartha on 4/5/25.
//

import SwiftUI

func backgroundGradient() -> LinearGradient {
    return LinearGradient(colors: [Color.black],
                          startPoint: .top, endPoint: .bottom)
}

struct ContentView: View {
    @EnvironmentObject private var appState: AppState
    var body: some View {
        if !appState.canAccessHealthKit {
            ZStack {
                backgroundGradient()
            }
        }
        else {
            ZStack (alignment: .topLeading) {
                backgroundGradient()
                HStack {
                    Text("\(Date(), style: .date)")
                        .font(.headline)
                        .foregroundColor(Color.gray)
                }
                .padding(.top, 20)
                .padding(.leading, 20)
                
                HStack {
                    Text("Summary")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                        Image(systemName: "circle.fill")
                            .foregroundColor(Color.red)
                            .font(.system(size: 35))
                            .padding(.trailing, 10)
                            .overlay(
                                Text("ST")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                    .bold()
                                    .padding(.trailing, 12)
                            )
                }
                .padding(.top, 50)
                .padding(.leading, 20)
                
                
                VStack {
                    CareerRunsView()
                        .environmentObject(appState)
                }
                .padding(.top, 100)
            }
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(AppState())
}
