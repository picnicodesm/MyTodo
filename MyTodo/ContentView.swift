//
//  ContentView.swift
//  MyTodo
//
//  Created by picnic on 6/23/26.
//

import SwiftUI
import SwiftData

final class ListItem: Identifiable {
    var timeStamp: Date
    
    init(timeStamp: Date = Date()) {
        self.timeStamp = timeStamp
    }
}

struct ContentView: View {
    @State private var items: [ListItem] = []
    
    var body: some View {
        NavigationStack {
            List(items) { item in
                Text("\(item.timeStamp.description)")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: addItem) {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationTitle("My Todo")
        }
    }
    
    func addItem() {
        withAnimation {
            items.append(ListItem())
        }
    }
}

#Preview {
    ContentView()
}
