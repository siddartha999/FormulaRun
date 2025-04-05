//
//  CarrerRunsView.swift
//  FormulaRun
//
//  Created by Tummala, Siddartha on 4/5/25.
//

import SwiftUI


struct CareerRunsView: View {
    var body: some View {
        ZStack{
            backgroundGradient()
            Grid {
                GridRow {
                    HStack {
                        Text("Carrer Runs")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading, 16)
                        Spacer()
                    }
                }
                .padding([.top], 10)
                
                Divider()
                
                GridRow {
                    HStack {
                        VStack {
                            Text("Total")
                                .foregroundColor(.green)
                            Text("100")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text ("10Ks")
                                .foregroundColor(.brown)
                            Text("70")
                                .foregroundColor(.indigo)
                        }
                        VStack {
                            Text ("5Ks")
                                .foregroundColor(.brown)
                            Text("30")
                                .foregroundColor(.indigo)
                        }
                        Spacer()
                    }
                    .padding([.leading], 16)
                }
                .frame(alignment: .leading)
            }
            .frame(width: .infinity, height: 120)
            .border(.gray)
            .cornerRadius(16)
            .padding()
        }
    }
}
