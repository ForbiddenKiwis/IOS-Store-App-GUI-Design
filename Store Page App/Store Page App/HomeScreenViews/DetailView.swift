//
//  DetailView.swift
//  Store Page App
//
//  Created by english on 2024-09-30.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corner: UIRectCorner
    let radius: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct Counter: View{
    @State var count = 0
    var body: some View{
        HStack(spacing: 20){
            Button(action: {
                self.count += 1
            }) {
                Image(systemName: "plus")
            }
            Text("\(self.count)")
                .font(.title)
            
            Button(action: {
                self.count -= 1
            }) {
                Image(systemName: "minus")
            }
        }
    }
}

struct DetailView: View {
    @State var fruit: fruitTitle
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape.init(corner:[.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5, x:5, y:5)
                .overlay(
                    Image(fruit.rawValue)
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                )
            Spacer()
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to procure high quality, nutritious food that contributes to the preventive health care and well-being. In the view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("25-30 Min")
                }
            }.padding(.horizontal)
            
            HStack{
                Text("$1.99")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.horizontal)
                
                Spacer()
                Counter()
            }
            
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .gray, radius: 5, x:5, y:5)
                .overlay(
                    Text("Add to Cart")
                        .font(.title3)
                        .fontWeight(.medium)
                ).padding(.horizontal)
        }
    }
}

#Preview {
    DetailView(fruit: .orange)
}
