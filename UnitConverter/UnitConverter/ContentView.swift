//
//  ContentView.swift
//  UnitConverter
//
//  Created by Lucas Firmo on 01/05/25.
//

import SwiftUI

struct ContentView: View {
  @State private var selectedUnit: String = "Kilometers"
  @State private var amount: Double = 0.0
  
  private let units: [String] = ["Kilometers", "Miles"]

  private var unitDescription: String {
    if selectedUnit == "Kilometers" {
      return "Miles"
    } else {
      return "Kilometers"
    }
  }
  
  private func convert(_ amount: Double) -> Double {
    switch selectedUnit {
    case "Kilometers":
      return amount * 0.621371
    case "Miles":
      return amount * 1.60934
    default:
      return 0.0
    }
  }
  
  var body: some View {
    Form {
      Section("Choose a unit to convert from") {
        Picker("Units", selection: $selectedUnit) {
          ForEach(units, id: \.self) {
            Text($0)
          }
          .pickerStyle(.segmented)
        } // Picker
      } // Unit Section
      
      Section("Choose the amount") {
        TextField("Amount", value: $amount, format: .number)
          .keyboardType(.decimalPad)
      } // Amount Section
      
      Section("Converted amount") {
        Text("\(convert(amount), specifier: "%.2f") \(unitDescription)")
      }
    } // Form
  }
  
}

#Preview {
  ContentView()
}
