//
//  CarrerRunsView.swift
//  FormulaRun
//
//  Created by Tummala, Siddartha on 4/5/25.
//

import SwiftUI


struct CareerRunsView: View {
    var body: some View {
        
            Grid {
                GridRow {
                    HStack {
                        Text("Carrer Runs")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading, 16)
                        Image(systemName: "figure.run")
                            .foregroundColor(.white)
                            .symbolEffect(.pulse.wholeSymbol, options: .repeat(.periodic(delay: 1.0)))
                            .font(.title2)
                            .padding(.leading, 4)
                        
                        Spacer()
                    }
                }
                .padding([.top], 10)
                
                Divider()
                    .frame(height: 1)
                    .background(Color.gray.opacity(0.3))
                
                GridRow {
                    HStack {
                        VStack {
                            Text("Total")
                                .foregroundColor(.green)
                                .font(.title3)
                                .bold()
                            
                            Spacer()
                            
                            Text("100")
                                .foregroundColor(.green)
                                .padding(.bottom, 10)
                                
                        }
                        Spacer()
                        
                        VStack {
                            HStack {
                                Text ("10K")
                                    .foregroundColor(.cyan)
                                    .font(.title3)
                                    .bold()
                            }
                            Spacer()
                            Text("70")
                                .foregroundColor(.cyan)
                                .padding(.bottom, 10)
                        }
                        Spacer()
                        
                        VStack {
                            Text ("5K")
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .bold()
                            
                            Spacer()
                            Text("30")
                                .foregroundColor(.yellow)
                                .padding(.bottom, 10)
                        }
                        Spacer()
                    }
                    .padding(.leading, 18)
                    .padding(.top, 10)
                }
                
            }
            .frame(width: .infinity, height: 140)
            .background(Color.gray.opacity(0.2))
            .border(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .shadow(color: Color.white.opacity(0.01), radius: 4)
            .padding()
        }
}
