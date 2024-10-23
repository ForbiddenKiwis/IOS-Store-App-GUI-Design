//
//  RatingDetailView.swift
//  Store Page App
//
//  Created by english on 2024-10-07.
//

import SwiftUI

struct roundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct RatingDetailView: View {
    let place: Places
    
    var body: some View {
        VStack(alignment: .center, spacing: 30){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(roundedCornerShape.init(corners: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5, y: 5)
                .overlay(
                    Image(place.image)
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                )
            
            Text(place.name)
                .font(.largeTitle)
                .padding(.top)
            
            Text("Operating Hours: \(place.time)")
                .font(.subheadline)
                .padding(.top)
            
            Text("Rating: \(place.rating)")
            

                
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Select Location")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                )
                .padding(.horizontal)
            Spacer()
            
            
        }
        .padding()
        .navigationTitle(place.name)
    
    }
}

#Preview {
    RatingDetailView(place: Places(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"))
}
