//
//  MyTodoApp.swift
//  MyTodo
//
//  Created by picnic on 6/23/26.
//

import SwiftUI
import SwiftData

@main
struct MyTodoApp: App {
    // url 매개변수 이용해서 Container 만들어보기
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}


