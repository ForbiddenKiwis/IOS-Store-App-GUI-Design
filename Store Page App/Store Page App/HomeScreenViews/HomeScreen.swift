//
//  HomeScreen.swift
//  Store Page App
//
//  Created by english on 2024-09-30.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "car.badge.plus")
                }
                
                Text("Hey")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find fresh fruits that you want.")
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search Fresh Fruits")
                                .foregroundStyle(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }.padding()
                    ).frame(width: 350, height: 60, alignment: .center)
                
                Text("Top Selling View")
                    .font(.title)
                    .fontWeight(.bold)
                
                TopSellingView()
                
                Text("Near You")
                    .font(.title)
                    .fontWeight(.bold)
                NearYouView()
            }.padding()
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    HomeScreen()
}
