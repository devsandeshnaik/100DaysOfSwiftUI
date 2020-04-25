//
//  AddView.swift
//  iExpense
//
//  Created by Sandesh on 12/04/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Persona"
    @State private var amount = ""
    static let types = ["Business", "Personal"]
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(Self.types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Add new Expense")
            .navigationBarItems(trailing: Button("Save") {
                if let amount = Int(self.amount) {
                    let expenseItem = ExpenseItem(name: self.name, type: self.type, amount: amount)
                    self.expenses.items.append(expenseItem)
                    self.presentationMode.wrappedValue.dismiss()
                }
            })
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
