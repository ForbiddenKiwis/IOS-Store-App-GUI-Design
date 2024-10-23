//
//  NearYouView.swift
//  Store Page App
//
//  Created by english on 2024-09-30.
//

import SwiftUI

struct NearYouView: View {
    
    let dataArray: [Places] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            // nav view -> top Selling view
            // new page -> show the info of the store,
            // you can design the ui or
            // use the dtail page as a reference.
            
            ForEach(dataArray, id: \.id) {
                post in NavigationLink(destination: RatingDetailView(place: post)) {
                    HStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.gray.opacity(0.3))
                            .frame(width: 100, height: 100)
                            .overlay(
                                Image(post.image)
                                    .resizable()
                                    .scaledToFit()
                            )
                        VStack(alignment: .leading) {
                            Text("\(post.name)")
                                .font(.system(.headline))
                            Text("\(post.time)")
                                .font(.system(.headline))
                                .foregroundStyle(.gray)
                            
                            Text("\(post.rating)")
                        }
                    }
                }
            }
        }
    }
}

#Preview{
    NearYouView()
}
    
