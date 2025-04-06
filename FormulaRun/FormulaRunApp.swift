//
//  FormulaRunApp.swift
//  FormulaRun
//
//  Created by Tummala, Siddartha on 4/5/25.
//

import SwiftUI
import HealthKit


class AppState: ObservableObject {
    @Published var canAccessHealthKit: Bool = HKHealthStore.isHealthDataAvailable()
}

@main
struct FormulaRunApp: App {
    @StateObject private var appState: AppState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}
