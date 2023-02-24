//
//  PersonItemView.swift
//  TakeHome-v1
//
//  Created by Brian McIntosh on 2/23/23.
//

import SwiftUI

struct PersonItemView: View {
    
    // in our previous code, we were passing in an 'item' in the forEach loop,
    // so all the code below had access to these variables
    let user: User
    
    var body: some View {
        VStack(spacing: .zero) {
            
//            Rectangle()
//                .fill(.blue)
//                .frame(height: 130)
            
            AsyncImage(url: .init(string: user.avatar)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 130)
                    .clipped()
            }placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                //point of pill extraction!
                PillView(id: user.id)
                
                Text("\(user.firstName) \(user.lastName)")
                    .foregroundColor(Theme.text)
                    .font(
                        .system(.body, design: .rounded)
                    )
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 8)
            .padding(.vertical, 5)
            .background(Theme.detailBackground)
        }
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color: Theme.text.opacity(0.1),
        radius: 2,
                x: 0,
                y: 1)
    }
}

struct PersonItemView_Previews: PreviewProvider {
    
    // REVIEW @ 5:00 mark in video
    
    static var previewUser: User {
        let users = try! StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self)
        return users.data.first!
    }
    
    static var previews: some View {
        PersonItemView(user: previewUser)
            .frame(width: 250) //this is just to make it look more like the actual design
    }
}
