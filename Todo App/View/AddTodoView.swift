//
//  AddTodoView.swift
//  Todo App
//
//  Created by Rick Brown on 06/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct AddTodoView: View {
  @Environment(\.presentationMode) var presentationMode
  
  @State private var name: String = ""
  @State private var priority: String = "Normal"
  
  let priorities = ["High", "Normal", "Low"]
  
  var body: some View {
    NavigationView {
      VStack {
        Form {
          TextField("Todo", text: $name)
          
          Picker("Priority", selection: $priority) {
            ForEach(priorities, id: \.self) {
              Text($0)
            }
          }
          .pickerStyle(SegmentedPickerStyle())
          
          Button(action: {
            print("Save a new todo item")
          }) {
            Text("Save")
          }
          
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        Spacer()
      }
      .navigationBarTitle("New Todo", displayMode: .inline)
    .navigationBarItems(trailing:
      Button(action: {
        self.presentationMode.wrappedValue.dismiss()
      }) {
        Image(systemName: "xmark")
      }
      )
    }
  }
}

struct AddTodoView_Previews: PreviewProvider {
  static var previews: some View {
    AddTodoView()
  }
}
