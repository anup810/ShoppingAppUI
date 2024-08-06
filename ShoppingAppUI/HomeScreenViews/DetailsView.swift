//
//  DetailsView.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-05.
//

import SwiftUI

struct DetailsView: View {
    @State var fruit: fruitTitle
    @State var count = 0
    var body: some View {
        GeometryReader { geo in
            VStack(alignment:.leading,spacing: 25){
                Image(.bg)
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .clipShape(RoundedCronerShape.init(corners: [.bottomLeft,.bottomRight], radius: 50))
                    .frame(width: geo.size.width, height:geo.size.height/3,alignment: .top)
                    .overlay(
                        Image("\(fruit.rawValue)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250,alignment: .center)
                            .shadow(color: .gray, radius: 5,x: 5,y: 5)
                            .offset(y:50)
                    )
                Spacer()
                Text("\(fruit.rawValue) - Medium")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .textCase(.uppercase)
                Text("Each (500g - 700g)")
                    .padding(.horizontal)
                Text("Organic agriculture is intended to produce high uality, nutritious fodd that contributes to preventive health care and well- being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .lineLimit(6)
                    .padding(.horizontal)
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("bgColor"))
                        .opacity(0.25)
                        .overlay(
                            Image(systemName: "hourglass")
                        )
                        .font(.system(size: 40))
                        .frame(width: 50,height: 50)
                    VStack(alignment:.leading, spacing: 5){
                        Text("Delivery Time")
                        Text("25-30 Min")
                    }
                }.padding(.horizontal)
                HStack{
                    Text("$1.99")
                        .fontWeight(.medium)
                        .font(.title)
                        .padding(.horizontal)
                    Spacer()
                    CounterView()
                    
                }
                Image(.bg)
                    .resizable()
                    .frame(width: 350,height: 50,alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: .gray, radius: 5)
                    .overlay(
                        Text("Add to cart")
                            .font(.title3)
                            .fontWeight(.medium)
                    ).padding(.horizontal)
            }
        }
    }
}

#Preview {
    DetailsView(fruit: .apple)
}
