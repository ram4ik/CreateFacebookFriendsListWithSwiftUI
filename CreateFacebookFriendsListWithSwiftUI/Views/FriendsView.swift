//
//  FriendsView.swift
//  CreateFacebookFriendsListWithSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Friend: Identifiable {
    var id:UUID = UUID()
    var name:String
    var mutualFriends:Int
    var avatar:String
    var poster: String
}

struct FriendsView: View {
    
    var friends:[Friend] = [
        Friend(name: "Kristina D.", mutualFriends: 350, avatar: "cristina", poster: "alps"),
        Friend(name: "David G.", mutualFriends: 1, avatar: "david", poster: "sanfransisco"),
        Friend(name: "Robert B.", mutualFriends: 22, avatar: "robert", poster: "london"),
        Friend(name: "Ruxi A.", mutualFriends: 10, avatar: "ruxi", poster: "paris"),
        Friend(name: "George B.", mutualFriends: 2, avatar: "george", poster: "newyork"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(friends, id: \.id) { friend in
                    FriendRow(friend: friend).padding()
                }.navigationBarTitle("Friends")
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
