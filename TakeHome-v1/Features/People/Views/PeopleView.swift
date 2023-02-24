//
//  PeopleView.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/22/23.
//

import SwiftUI

struct PeopleView: View {
    
    @State private var users: [User] = [] //this is what our view will observe
    @State private var shouldShowCreate = false
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                background
                
                ScrollView {
                    
                    LazyVGrid(columns: columns,
                              spacing: 16) {
                        
                        // Original ForEach for testing
                        //ForEach(0...5, id: \.self) { item in
                        
                        ForEach(users, id: \.id) { user in
                            
                            //Text("\(item): Hello, World!")
                            //the point where we extracted our repeating VStack
                            //replace w/ extracted component
                            
                            PersonItemView(user: user)
                        }
                    }
                    .padding()
                    
//                    Text("PEOPLE VIEW")
//                        .onAppear {
//                            // Our mapper allows us to simulate our API request:
//                            print("Users Response")
//                            dump(
//                                try? StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self)
//                            )
//                            print("Single User Response")
//                            dump(
//                                try? StaticJSONMapper.decode(file: "SingleUserData", type: UserDetailResponse.self)
//                            )
//                    }
                }
            }
            .navigationTitle("People")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    create
                }
            }
            // get users
            .onAppear {
                // write the logic to get the dummy data
                do {
                    // we wrote a function that will throw an error
                    let res = try StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self)
                    
                    users = res.data // so now we're storing this...
                }catch{
                    print("Error getting local file from FileManager or Error converting local file into data")
                }
            }
            .sheet(isPresented: $shouldShowCreate) {
                CreateView()
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}

private extension PeopleView {
    
    //computed property
    var background: some View {
        Theme.background
            .ignoresSafeArea(edges: .top)
    }
    
    //computed property
    var create: some View {
        // move toolbar code here...
        Button {
            print("button extension")
            shouldShowCreate.toggle()
        } label: {
            Symbols.plus
                .font(
                    .system(.headline, design: .rounded)
                    .bold()
                )
        }
    }
}
