//
//  AddView.swift
//  TodoList
//
//  Created by Hillol Talukdar on 1/1/25.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State  var alertTitle : String = ""
    @State  var showAlert : Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Enter your item", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
            
        }
        .navigationTitle("Add an item 🖊️")
        .alert(isPresented: $showAlert, content: getALert)
    }
    
    func saveButtonPressed() {
        if(textIsAppropriate()) {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        } else {
            
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getALert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
}
