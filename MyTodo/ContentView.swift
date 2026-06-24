//
//  ContentView.swift
//  MyTodo
//
//  Created by picnic on 6/23/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var items: [Item]
    
    var body: some View {
        Text("Hello World!")
    }
}

#Preview {
    ContentView()
}
