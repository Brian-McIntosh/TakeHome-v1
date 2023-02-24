//
//  DetailView.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/23/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        
        ZStack {
            background
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 18) {
                    
                    PillView(id: 1)
                    
                    Text("First Name")
                        .font(
                            .system(.body, design: .rounded)
                            .weight(.semibold)
                        )
                    
                    Text("<Fast Name Here>")
                        .font(
                            .system(.subheadline, design: .rounded)
                        )
                    
                    Divider()
                    
                    Text("Last Name")
                        .font(
                            .system(.body, design: .rounded)
                            .weight(.semibold)
                        )
                    
                    Text("<Last Name Here>")
                        .font(
                            .system(.subheadline, design: .rounded)
                        )
                    
                    Divider()
                    
                    Text("Email")
                        .font(
                            .system(.body, design: .rounded)
                            .weight(.semibold)
                        )
                    
                    Text("<Email Here>")
                        .font(
                            .system(.subheadline, design: .rounded)
                        )
                    
                }
                
            }
        }
    

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

private extension DetailView {
    
    var background: some View {
        Theme.background
            .ignoresSafeArea(edges: .top)
    }
}
