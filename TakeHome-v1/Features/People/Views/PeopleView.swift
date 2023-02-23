//
//  PeopleView.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/22/23.
//

import SwiftUI

struct PeopleView: View {
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                background
                
                ScrollView {
                    
                    LazyVGrid(columns: columns,
                              spacing: 16) {
                        
                        ForEach(0...5, id: \.self) { item in
                            
                            //Text("\(item): Hello, World!")
                            //the point where we extracted our repeating VStack
                            //replace w/ extracted component
                            
                            PersonItemView(user: item)
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
        } label: {
            Symbols.plus
                .font(
                    .system(.headline, design: .rounded)
                    .bold()
                )
        }
    }
}
