//
//  ContentView.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding()
                .onAppear {
                    
                    print("Users Response")
                    dump(
                        try? StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self)
                    )
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
