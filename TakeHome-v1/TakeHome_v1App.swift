//
//  TakeHome_v1App.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/21/23.
//

import SwiftUI

@main
struct TakeHome_v1App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                PeopleView()
                    .tabItem {
                        Symbols.person
                        Text("Home")
                    }
            }
        }
    }
}
