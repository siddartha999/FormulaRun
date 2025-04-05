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
    var body: some View {
        CareerRunsView()
    }
}


#Preview {
    ContentView()
}
