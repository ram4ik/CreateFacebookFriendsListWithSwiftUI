//
//  FriendDetailsView.swift
//  CreateFacebookFriendsListWithSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct FriendDetailsView: View {
    var friend:Friend
    
    var body: some View {
        VStack {
            Image(friend.poster)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200, alignment: .center)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding([.leading, .trailing])
            VStack {
                Image(friend.avatar)
                    .resizable()
                    .clipped()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                Text(friend.name)
                    .fontWeight(.bold)
            }.offset(y: -70)
            Spacer()
        }.navigationBarTitle(Text(friend.name), displayMode: .inline)
    }
}

struct FriendDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailsView(friend: Friend(name: "David G.", mutualFriends: 1, avatar: "david", poster: "sanfransisco"))
    }
}
