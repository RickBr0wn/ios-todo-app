//
//  ContentView.swift
//  Todo App
//
//  Created by Rick Brown on 06/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var showingAddTodoView: Bool = false
  
  var body: some View {
    NavigationView {
      
      List(0 ..< 5) { item in
        Text("Hello, World!")
      }
      .navigationBarTitle("Todo", displayMode: .inline)
      .navigationBarItems(trailing:
        Button(action: {
          self.showingAddTodoView.toggle()
        }) {
          Image(systemName: "plus")
        }
        .sheet(isPresented: $showingAddTodoView) {
          AddTodoView()
        }
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

