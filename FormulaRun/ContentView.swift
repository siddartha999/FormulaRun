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
        if appState.canAccessHealthKit {
            ZStack {
                backgroundGradient()
                VStack {
                    CareerRunsView()
                        .environmentObject(appState)
                    Spacer()
                }
            }
        } else {
            ZStack {
                backgroundGradient()
                
            }
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(AppState())
}
